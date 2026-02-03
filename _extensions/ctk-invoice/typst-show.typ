// start typst-show within ctk-invoice

#show: doc => ctk-invoice(
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$],
    $for(it.affiliations/first)$
    address: [$if(it.address)$$it.address$$endif$],
    $endfor$
    $if(it.email)$
      email: [$it.email$],
    $endif$
      ),
$endif$
$endfor$
    ),
$endif$
$if(date)$
  date: [$date$],
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
$if(region)$
  region: "$region$",
$endif$
$if(invoice-number)$
  invoice-number: [$invoice-number$],
$endif$
$if(invoice-period)$
  invoice-period: [$invoice-period$],
$endif$
$if(invoice-re)$
  invoice-re: [$invoice-re$],
$endif$
$if(rate)$
  rate: [$rate$],
$endif$
$if(margin)$
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$endif$
$if(papersize)$
  paper: "$papersize$",
$endif$
$if(mainfont)$
  font: ($for(mainfont)$"$mainfont$",$endfor$),
$endif$
$if(fontsize)$
  fontsize: $fontsize$,
$endif$
$if(linestretch)$
  linestretch: $linestretch$,
$endif$
$if(linkcolor)$
  linkcolor: "$linkcolor$",
$endif$
  cols: $if(columns)$$columns$$else$1$endif$,
  doc,
)
