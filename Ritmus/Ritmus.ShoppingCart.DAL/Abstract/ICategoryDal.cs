using Ritmus.Core.DAL;
using Ritmus.ShoppingCart.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ritmus.ShoppingCart.DAL.Abstract
{
    public interface ICategoryDal : IEntityRepository<Category>
    {
    }
}
