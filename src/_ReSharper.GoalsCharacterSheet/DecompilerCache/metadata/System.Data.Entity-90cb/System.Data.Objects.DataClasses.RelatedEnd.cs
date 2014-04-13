// Type: System.Data.Objects.DataClasses.RelatedEnd
// Assembly: System.Data.Entity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
// Assembly location: C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.Entity.dll

using System;
using System.Collections;
using System.ComponentModel;
using System.Data.Metadata.Edm;
using System.Data.Objects;
using System.Runtime.Serialization;
using System.Xml.Serialization;

namespace System.Data.Objects.DataClasses
{
    [DataContract]
    [Serializable]
    public abstract class RelatedEnd : IRelatedEnd
    {
        public event CollectionChangeEventHandler AssociationChanged;
        [XmlIgnore]
        [SoapIgnore]
        public bool IsLoaded { get; }
        [XmlIgnore]
        [SoapIgnore]
        public string RelationshipName { get; }
        [XmlIgnore]
        [SoapIgnore]
        public RelationshipSet RelationshipSet { get; }
        [XmlIgnore]
        [SoapIgnore]
        public string SourceRoleName { get; }
        [SoapIgnore]
        [XmlIgnore]
        public string TargetRoleName { get; }
        public abstract void Load(MergeOption mergeOption);
        public IEnumerator GetEnumerator();
        public void Load();

        [OnDeserialized]
        [Browsable(false)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        public void OnDeserialized(StreamingContext context);

        void IRelatedEnd.Add(IEntityWithRelationships entity);
        void IRelatedEnd.Add(object entity);
        void IRelatedEnd.Attach(IEntityWithRelationships entity);
        void IRelatedEnd.Attach(object entity);
        IEnumerable IRelatedEnd.CreateSourceQuery();
        bool IRelatedEnd.Remove(IEntityWithRelationships entity);
        bool IRelatedEnd.Remove(object entity);
    }
}
