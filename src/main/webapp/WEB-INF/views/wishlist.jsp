<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>My Wishlist</h2>

<table border="1">

<tr>
<th>Car</th>
<th>City</th>
<th>KMS</th>
<th>Price</th>
<th>Action</th>
</tr>

<c:forEach items="${wishlist}" var="w">

<tr>

<td>
${w.carListing.brandId} ${w.carListing.modelId} ${w.carListing.year}
</td>

<td>${w.carListing.city}</td>

<td>${w.carListing.kmsDriven} KM</td>

<td>₹ ${w.carListing.price}</td>

<td>

<a href="removeWishlist?wishlistId=${w.wishlistId}">
<button>Remove</button>
</a>

<a href="buyNow?listingId=${w.carListing.listingId}">
<button>Buy Now</button>
</a>

</td>

</tr>

</c:forEach>

</table>