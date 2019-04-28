using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Ritmus.ShoppingCart.Entities.Concrete;

namespace Ritmus.ShoppingCart.MvcWebUI.Models
{
    public class CategoryListViewModel
    {
        public List<Category> Categories { get; internal set; }
        public int CurrentCategory { get; internal set; }
    }
}
