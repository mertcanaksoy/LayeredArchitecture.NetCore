using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Ritmus.ShoppingCart.Entities.Concrete;
using Ritmus.ShoppingCart.MvcWebUI.ExtensionMethods;

namespace Ritmus.ShoppingCart.MvcWebUI.Services
{
    public class CartSessionService : ICartSessionService
    {
        private IHttpContextAccessor _httpContextAccessor;

        public CartSessionService(IHttpContextAccessor httpContextAccessor)
        {
            _httpContextAccessor = httpContextAccessor;
        }

        public Cart GetCart()
        {
            Cart cartToCheck = _httpContextAccessor.HttpContext.Session.GetObject<Cart>("cart");
            if (cartToCheck == null)
            {
                _httpContextAccessor.HttpContext.Session.SetObject("cart", new Cart()); //Sepeti ilk kez oluşturma
                cartToCheck = _httpContextAccessor.HttpContext.Session.GetObject<Cart>("cart");
            }

            return cartToCheck;
        }

        public void SetCart(Cart cart)
        {
            _httpContextAccessor.HttpContext.Session.SetObject("cart", cart);
        }
    }
}
