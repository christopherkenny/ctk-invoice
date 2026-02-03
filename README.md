# `ctk-invoice` Format

The `ctk-invoice` is a Quarto template for writing invoices with a Typst backend, designed to aesthetically align with the [`ctk-article`](https://github.com/christopherkenny/ctk-article) template.

<!-- pdftools::pdf_convert('template.pdf', pages = 1) -->
![[template.qmd](template.qmd)](template_1.png)

## Installing

```bash
quarto use template christopherkenny/ctk-invoice
```

This will install the format extension and create an example qmd file
that you can use as a starting place for your document.

## Using `ctk-invoice`

This template is designed for hourly billing invoices.
The invoice header is configured through YAML metadata, while the billing table is written in standard Quarto markdown.

### Template YAML Options

- `title`: The document title (defaults to "Invoice")
- `author`: Author information, following Quarto's author schema. Provide subfields below:
  - `name`: Your name
  - `affiliations`: Provide an `address` subfield for your mailing address
- `date`: The invoice date
- `invoice-number`: A unique invoice identifier
- `invoice-period`: The billing period covered
- `invoice-re`: The matter or engagement the invoice pertains to
- `rate`: Your billing rate

### Billing Table

The billing table is written as a standard markdown table with columns for date, description, hours, and cost.
Use bold text on the final row to indicate the total.

### Fonts

By default, the `ctk-invoice` format uses the Spectral font.
This can be installed from [Google Fonts](https://fonts.google.com/specimen/Spectral).

To check that it is installed, run:

```
quarto typst fonts
```

Otherwise, set the yaml option `mainfont` to your preferred font, e.g. `mainfont: "Crimson Pro"`.

## License

This template is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
