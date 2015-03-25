using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebNH.Models.Hibernate
{
    public class Person
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

    }

    public class Department
    {
        public int Id { get; set; }
        public DepType Type { get; set; }
        public string Description { get; set; }
    }

    public enum DepType
    {
        Oracle,
        MsSql,
        Windows
    }

    public enum ProxyType
    {
        Sock4,
        Sock4a,
        Sock5,
        Http,
        Https
    }
}
