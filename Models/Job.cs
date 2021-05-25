using System;

namespace jobs.Models
{
    public class Job
    {
        public int Id { get; set; } 
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
        public string JobName { get; set; } 
        public string Location { get; set; }    
        public string Description { get; set; }
    }
}