// Type: System.Collections.Specialized.NameValueCollection
// Assembly: System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
// Assembly location: C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.dll

using System;
using System.Collections;
using System.Runtime;
using System.Runtime.Serialization;

namespace System.Collections.Specialized
{
    [Serializable]
    public class NameValueCollection : NameObjectCollectionBase
    {
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection();

        public NameValueCollection(NameValueCollection col);

        [Obsolete("Please use NameValueCollection(IEqualityComparer) instead.")]
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(IHashCodeProvider hashProvider, IComparer comparer);

        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(int capacity);

        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(IEqualityComparer equalityComparer);

        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(int capacity, IEqualityComparer equalityComparer);

        public NameValueCollection(int capacity, NameValueCollection col);

        [Obsolete("Please use NameValueCollection(Int32, IEqualityComparer) instead.")]
        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public NameValueCollection(int capacity, IHashCodeProvider hashProvider, IComparer comparer);

        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        protected NameValueCollection(SerializationInfo info, StreamingContext context);

        public virtual string[] AllKeys { get; }

        public string this[string name] { [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        get; [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        set; }

        public string this[int index] { [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        get; }

        public virtual void Add(string name, string value);
        public virtual void Clear();
        public virtual string Get(string name);
        public virtual string Get(int index);
        public virtual string GetKey(int index);
        public virtual string[] GetValues(string name);
        public virtual string[] GetValues(int index);
        public virtual void Remove(string name);
        public virtual void Set(string name, string value);
        public void Add(NameValueCollection c);
        public void CopyTo(Array dest, int index);

        [TargetedPatchingOptOut("Performance critical to inline this type of method across NGen image boundaries")]
        public bool HasKeys();

        protected void InvalidateCachedArrays();
    }
}
