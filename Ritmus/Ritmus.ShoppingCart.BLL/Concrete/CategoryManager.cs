using Ritmus.ShoppingCart.BLL.Abstract;
using Ritmus.ShoppingCart.DAL.Abstract;
using Ritmus.ShoppingCart.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ritmus.ShoppingCart.BLL.Concrete
{
    public class CategoryManager : ICategoryService
    {
        private ICategoryDal _categoryDal;

        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }

        public List<Category> GetAll()
        {
            return _categoryDal.GetList();
        }
    }
}
