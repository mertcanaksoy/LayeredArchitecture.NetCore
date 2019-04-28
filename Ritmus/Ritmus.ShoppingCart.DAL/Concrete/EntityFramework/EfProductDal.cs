using Ritmus.Core.DAL.EntityFramework;
using Ritmus.ShoppingCart.DAL.Abstract;
using Ritmus.ShoppingCart.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ritmus.ShoppingCart.DAL.Concrete.EntityFramework
{
    public class EfProductDal : EfEntityRepositoryBase<Product, RitmusContext>, IProductDal
    {

    }
}
