using Microsoft.AspNetCore.Mvc;
using Ritmus.ShoppingCart.BLL.Abstract;
using Ritmus.ShoppingCart.Entities.Concrete;
using Ritmus.ShoppingCart.MvcWebUI.Models;
using Ritmus.ShoppingCart.MvcWebUI.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ritmus.ShoppingCart.MvcWebUI.Controllers
{
    public class CartController:Controller
    {
        private ICartSessionService _cartSessionService;
        private ICartService _cartService;
        private IProductService _productService;

        public CartController(
            ICartSessionService cartSessionService,
            ICartService cartService,
            IProductService productService)
        {
            _cartSessionService = cartSessionService;
            _cartService = cartService;
            _productService = productService;
        }

        public ActionResult AddToCart(int productId)
        {
            var productToBeAdded = _productService.GetById(productId);
            var cart = _cartSessionService.GetCart();
            _cartService.AddToCart(cart, productToBeAdded);
            _cartSessionService.SetCart(cart);

            TempData.Add("message", String.Format("{0},Başarıyla Sepete Eklendi!", productToBeAdded.ProductName));
           

            return RedirectToAction("Index", "Product");
        }       

        public ActionResult Remove(int productId)
        {
            var cart = _cartSessionService.GetCart();
            _cartService.RemoveFromCart(cart, productId);
            _cartSessionService.SetCart(cart);
            TempData.Add("message", String.Format("Ürün Sepetten Başarıyla Silindi"));
            return RedirectToAction("Index","Product");
        }

    }
}
