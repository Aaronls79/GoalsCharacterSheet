using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using GoalsCharacterSheet.Core;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Models
{
    public class ViewModel<T> : ICreate, IDisplay, IEdit where T : class, IEntity, new()
    {
        private readonly T _entity;
        private Dictionary<string, object> _fields;

        protected ViewModel(T entity)
        {
            _entity = entity ?? new T();
        }

        public ViewModel() :this(null){}

        public virtual IDictionary<string, object> EditableFields
        {
            get { return Fields; }
        }

        public int Id
        {
            get { return Entity.Id; }
            set { Entity.Id = value; }
        }

        public virtual Dictionary<string, object> Fields
        {
            get
            {
                if(_fields == null)
                {
                     _fields = new Dictionary<string, object>();
                     var fieldNames = new List<string>();
                     fieldNames.AddRange(typeof(T).GetProperties()
                         .Where(x => SimpleType(x.PropertyType) && !ExcludedProperty(x))
                         .OrderBy(x => x.Name)
                         .Select(propertyInfo => propertyInfo.Name));

                     var values = new List<object>(fieldNames.Count);
                     if (Entity != null)
                         values.AddRange(
                             Entity.GetType().GetProperties()
                             .Where(x => SimpleType(x.PropertyType) && !ExcludedProperty(x))
                             .OrderBy(x => x.Name)
                             .Select(propertyInfo => propertyInfo.GetValue(Entity, null) ?? string.Empty)
                         );

                     if (values.Count > 0)
                     {
                         for (int i = 0; i < fieldNames.Count; i++)
                             _fields.Add(fieldNames[i], values[i]);
                     }
           
                }

                return _fields;
            }
            set
            {
                if (value != null)
                {
                    _fields = value;
                }
            }
        }

        protected virtual bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return true;
        }

        private static bool SimpleType(Type propertyType)
        {
            return
                (propertyType == typeof (int)) |
                (propertyType == typeof (string)) |
                (propertyType == typeof (bool)) |
                (propertyType == typeof (long)) |
                (propertyType == typeof (byte));
        }

        public virtual T Entity
        {
            get { return _entity; }
        }

        public virtual IEnumerable<string> NewFields
        {
            get { return Fields.Keys; }
        }
    }
}