using System.ComponentModel.DataAnnotations;

namespace jobs.Models
{
    public class JobContractor
    {
        public int Id { get; set; }
        [Required]
        public int JobId { get; set; }
        [Required]
        public int ContractorId { get; set; }
    }

    public class JobContractorViewModel : Job
    {
        public string Name { get; set; }
        public int JobId { get; set; }
        public int ContractorId { get; set; }
        public int JobContractorId { get; set; }

    }
}