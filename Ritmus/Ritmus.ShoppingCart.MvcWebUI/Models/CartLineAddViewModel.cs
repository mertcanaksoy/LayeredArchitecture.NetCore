using Ritmus.ShoppingCart.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ritmus.ShoppingCart.MvcWebUI.Models
{
    public class CartLineAddViewModel
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }
    }
}
