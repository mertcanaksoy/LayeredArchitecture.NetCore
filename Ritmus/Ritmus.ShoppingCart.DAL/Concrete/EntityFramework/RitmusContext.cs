using Microsoft.EntityFrameworkCore;
using Ritmus.ShoppingCart.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ritmus.ShoppingCart.DAL.Concrete.EntityFramework
{
    public class RitmusContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=localhost;Database=Ritmus; Trusted_Connection=true");
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }
    }
}
