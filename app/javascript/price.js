const price = () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;

    const addTaxDom = document.getElementById("add-tax-price");
    const taxPrice = Math.floor(inputValue*0.1)
    addTaxDom.innerHTML = taxPrice;

    const profitPrice = document.getElementById("profit");
    profitPrice.innerHTML = Math.floor(inputValue - taxPrice);
  });
};

window.addEventListener("turbo:load", price);
window.addEventListener("turbo:render", price);