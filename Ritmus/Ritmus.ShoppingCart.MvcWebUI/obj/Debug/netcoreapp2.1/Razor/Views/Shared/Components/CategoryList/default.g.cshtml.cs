#pragma checksum "F:\YAZILIM\PROJELER\Ritmus\Ritmus.ShoppingCart.MvcWebUI\Views\Shared\Components\CategoryList\default.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "519ed7b50e51463b2a2557b1d1d84612c4556f75"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Components_CategoryList_default), @"mvc.1.0.view", @"/Views/Shared/Components/CategoryList/default.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Shared/Components/CategoryList/default.cshtml", typeof(AspNetCore.Views_Shared_Components_CategoryList_default))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"519ed7b50e51463b2a2557b1d1d84612c4556f75", @"/Views/Shared/Components/CategoryList/default.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a9af4978b9c2bfca24ef48e96efe5f8573634464", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_Components_CategoryList_default : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Ritmus.ShoppingCart.MvcWebUI.Models.CategoryListViewModel>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(66, 74, true);
            WriteLiteral("<div class=\"col-md-12\">\r\n    <div class=\"btn-group btn-group-justified\">\r\n");
            EndContext();
#line 4 "F:\YAZILIM\PROJELER\Ritmus\Ritmus.ShoppingCart.MvcWebUI\Views\Shared\Components\CategoryList\default.cshtml"
         foreach (var category in Model.Categories)
        {
            var css = "btn btn-info";
            if (category.CategoryId == Model.CurrentCategory)
            {
                css += " active";
            }


#line default
#line hidden
            BeginContext(373, 68, true);
            WriteLiteral("            <div class=\"btn-group\" role=\"group\">\r\n                <a");
            EndContext();
            BeginWriteAttribute("href", " href=\"", 441, "\"", 492, 2);
            WriteAttributeValue("", 448, "/product/index?category=", 448, 24, true);
#line 13 "F:\YAZILIM\PROJELER\Ritmus\Ritmus.ShoppingCart.MvcWebUI\Views\Shared\Components\CategoryList\default.cshtml"
WriteAttributeValue("", 472, category.CategoryId, 472, 20, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginWriteAttribute("class", " class=\"", 493, "\"", 505, 1);
#line 13 "F:\YAZILIM\PROJELER\Ritmus\Ritmus.ShoppingCart.MvcWebUI\Views\Shared\Components\CategoryList\default.cshtml"
WriteAttributeValue("", 501, css, 501, 4, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(506, 1, true);
            WriteLiteral(">");
            EndContext();
            BeginContext(508, 21, false);
#line 13 "F:\YAZILIM\PROJELER\Ritmus\Ritmus.ShoppingCart.MvcWebUI\Views\Shared\Components\CategoryList\default.cshtml"
                                                                               Write(category.CategoryName);

#line default
#line hidden
            EndContext();
            BeginContext(529, 26, true);
            WriteLiteral("</a>\r\n            </div>\r\n");
            EndContext();
#line 15 "F:\YAZILIM\PROJELER\Ritmus\Ritmus.ShoppingCart.MvcWebUI\Views\Shared\Components\CategoryList\default.cshtml"
        }

#line default
#line hidden
            BeginContext(566, 38, true);
            WriteLiteral("    </div>\r\n    <br />\r\n</div>\r\n<br />");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Ritmus.ShoppingCart.MvcWebUI.Models.CategoryListViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591