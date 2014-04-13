//Requires:
//Jquery 1.8.3
//Bing Maps: http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0
//Bing Maps license and key info: https://www.bingmapsportal.com/
$(function () {

    $.bingMap = function (element, options, count) {
        this.options = {};
        this.findLatLongCallback = function (result) { };

        element.data('bingMap', this);

        $('body').data('bingMap_element_' + count, element);

        this.init = function (element, options) {
            this.options = $.extend({}, $.bingMap.defaultOptions, options);

            this.options = $.metadata ?
            $.extend({}, this.options, element.metadata()) :
            this.options;

            updateElement(element, this.options);
            this.setPushPins();
        };

        this.setPushPins = function (callback) {
            var map = element.data('mapObj');
            var pins = this.options.Pins;
            if (pins == undefined || pins.length <= 0) {
                return;
            }
            map.entities.clear();
            var locations = new Array();
            for (i = 0; i < pins.length; i++) {
                var pushpinOptions = { text: pins[i].text, visible: true, htmlContent: pins[i].html };
                var pinLocation = new Microsoft.Maps.Location(pins[i].latitude, pins[i].longitude);
                var pushpin = new Microsoft.Maps.Pushpin(pinLocation, pushpinOptions);
                Microsoft.Maps.Events.addHandler(pushpin, 'click', pins[i].onClick);
                map.entities.push(pushpin);
                locations.push(pinLocation);
            }
            if (pins.length > 1) {
                var viewBoundaries = Microsoft.Maps.LocationRect.fromLocations(locations);
                viewBoundaries.height = (viewBoundaries.height * 1.05);
                viewBoundaries.width = (viewBoundaries.width * 1.05);
                map.setView({ center: locations[0], bounds: viewBoundaries });
            } else {
                map.setView({ center: locations[0], zoom: 10 });
            }

            if (callback != undefined) {
                callback();
            }
        };

        this.locate = function (callback) {
            var geoLocationProvider = new Microsoft.Maps.GeoLocationProvider(element.data('mapObj'));
            geoLocationProvider.getCurrentPosition({ successCallback: function (args) {
                if (callback != undefined) {
                    var result = {
                        latitude: args.center.longitude,
                        longitude: args.center.latitude
                    };
                    callback(result);
                }
            }
            });
        };

        this.findLatLong = function (callback) {
            var search = this.options.addressInput.val() + ", " +
                        this.options.cityInput.val() + ", " +
                        this.options.stateInput.val() + " " +
                        this.options.zipInput.val();
            search = search
                .replace('#', '')
                .replace('!', '')
                .replace('$', '')
                .replace('%', '')
                .replace('^', '')
                .replace('&', '')
                .replace('*', '')
                .replace('(', '')
                .replace(')', '');
            var geocodeRequest = "";
            element.data('mapObj').getCredentials(function (credentials) {
                geocodeRequest = "http://dev.virtualearth.net/REST/v1/Locations?q=" + encodeURI(search) + "&output=json&jsonp=$.bingMap.geocodeCallback&jsonso=bingMap_element_" + count + "&key=" + credentials;
            });


            this.findLatLongCallback = callback;
            var script = document.createElement("script");
            script.setAttribute("type", "text/javascript");
            script.setAttribute("src", geocodeRequest);
            document.body.appendChild(script);
        };


        this.init(element, options);
    };

    $.fn.bingMap = function (options) {
        return this.each(function () {
            var count = 1;
            (new $.bingMap($(this), options, count));
            count++;
        });
    };

    function updateElement(element, options) {
        element.css({
            height: options.height,
            width: options.width,
            position: 'relative'
        });
        var map = new Microsoft.Maps.Map(
        element.get(0), {
            credentials: options.mapKey,
            enableClickableLogo: false,
            enableSearchLogo: false
        });

        element.data('mapObj', map);
    };

    $.bingMap.geocodeCallback = function (result, element) {
        if (result &&
        result.resourceSets &&
        result.resourceSets.length > 0 &&
        result.resourceSets[0].resources &&
        result.resourceSets[0].resources.length > 0) {
            $('body').data(element).data('mapObj').entities.clear();

            // Set the map view using the returned bounding box
            var bbox = result.resourceSets[0].resources[0].bbox;
            var viewBoundaries = Microsoft.Maps.LocationRect.fromLocations(new Microsoft.Maps.Location(bbox[0], bbox[1]), new Microsoft.Maps.Location(bbox[2], bbox[3]));
            $('body').data(element).data('mapObj').setView({ bounds: viewBoundaries });

            // Add a pushpin at the found location
            var location = new Microsoft.Maps.Location(result.resourceSets[0].resources[0].point.coordinates[0], result.resourceSets[0].resources[0].point.coordinates[1]);
            var pushpin = new Microsoft.Maps.Pushpin(location);
            $('body').data(element).data('mapObj').entities.push(pushpin);

            var result = {
                latitude: result.resourceSets[0].resources[0].point.coordinates[0],
                longitude: result.resourceSets[0].resources[0].point.coordinates[1]
            };
            $('body').data(element).data('bingMap').findLatLongCallback(result);
        }

    };

    $.bingMap.defaultOptions = {
        mapKey: 'AjW6feuzFk6PwmPU7zK_p4WSgKJzA_ZLcr9egvZRczSIzq2_Z0SzbURiY5Hg3LbG',
        height: '300px',
        width: '400px',
        addressInput: $('input[name=address]'),
        cityInput: $('input[name=city]'),
        stateInput: $('input[name=state]'),
        zipInput: $('input[name=zip]'),
        LatitudeInput: $('input[name=latitude]'),
        LongitudeInput: $('input[name=longitude]'),
        Pins: undefined
    };


});