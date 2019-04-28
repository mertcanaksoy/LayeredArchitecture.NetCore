using Ritmus.ShoppingCart.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ritmus.ShoppingCart.BLL.Abstract
{
    public interface ICategoryService
    {
        List<Category> GetAll();
    }
}
