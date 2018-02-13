<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="generator" content="pandoc" />

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="author" content="Vignette Author" />

<meta name="date" content="2018-02-13" />

<title>Vignette Title</title>



<style type="text/css">code{white-space: pre;}</style>
<style type="text/css">
div.sourceCode { overflow-x: auto; }
table.sourceCode, tr.sourceCode, td.lineNumbers, td.sourceCode {
  margin: 0; padding: 0; vertical-align: baseline; border: none; }
table.sourceCode { width: 100%; line-height: 100%; }
td.lineNumbers { text-align: right; padding-right: 4px; padding-left: 4px; color: #aaaaaa; border-right: 1px solid #aaaaaa; }
td.sourceCode { padding-left: 5px; }
code > span.kw { color: #007020; font-weight: bold; } /* Keyword */
code > span.dt { color: #902000; } /* DataType */
code > span.dv { color: #40a070; } /* DecVal */
code > span.bn { color: #40a070; } /* BaseN */
code > span.fl { color: #40a070; } /* Float */
code > span.ch { color: #4070a0; } /* Char */
code > span.st { color: #4070a0; } /* String */
code > span.co { color: #60a0b0; font-style: italic; } /* Comment */
code > span.ot { color: #007020; } /* Other */
code > span.al { color: #ff0000; font-weight: bold; } /* Alert */
code > span.fu { color: #06287e; } /* Function */
code > span.er { color: #ff0000; font-weight: bold; } /* Error */
code > span.wa { color: #60a0b0; font-weight: bold; font-style: italic; } /* Warning */
code > span.cn { color: #880000; } /* Constant */
code > span.sc { color: #4070a0; } /* SpecialChar */
code > span.vs { color: #4070a0; } /* VerbatimString */
code > span.ss { color: #bb6688; } /* SpecialString */
code > span.im { } /* Import */
code > span.va { color: #19177c; } /* Variable */
code > span.cf { color: #007020; font-weight: bold; } /* ControlFlow */
code > span.op { color: #666666; } /* Operator */
code > span.bu { } /* BuiltIn */
code > span.ex { } /* Extension */
code > span.pp { color: #bc7a00; } /* Preprocessor */
code > span.at { color: #7d9029; } /* Attribute */
code > span.do { color: #ba2121; font-style: italic; } /* Documentation */
code > span.an { color: #60a0b0; font-weight: bold; font-style: italic; } /* Annotation */
code > span.cv { color: #60a0b0; font-weight: bold; font-style: italic; } /* CommentVar */
code > span.in { color: #60a0b0; font-weight: bold; font-style: italic; } /* Information */
</style>



<link href="data:text/css;charset=utf-8,body%20%7B%0Abackground%2Dcolor%3A%20%23fff%3B%0Amargin%3A%201em%20auto%3B%0Amax%2Dwidth%3A%20700px%3B%0Aoverflow%3A%20visible%3B%0Apadding%2Dleft%3A%202em%3B%0Apadding%2Dright%3A%202em%3B%0Afont%2Dfamily%3A%20%22Open%20Sans%22%2C%20%22Helvetica%20Neue%22%2C%20Helvetica%2C%20Arial%2C%20sans%2Dserif%3B%0Afont%2Dsize%3A%2014px%3B%0Aline%2Dheight%3A%201%2E35%3B%0A%7D%0A%23header%20%7B%0Atext%2Dalign%3A%20center%3B%0A%7D%0A%23TOC%20%7B%0Aclear%3A%20both%3B%0Amargin%3A%200%200%2010px%2010px%3B%0Apadding%3A%204px%3B%0Awidth%3A%20400px%3B%0Aborder%3A%201px%20solid%20%23CCCCCC%3B%0Aborder%2Dradius%3A%205px%3B%0Abackground%2Dcolor%3A%20%23f6f6f6%3B%0Afont%2Dsize%3A%2013px%3B%0Aline%2Dheight%3A%201%2E3%3B%0A%7D%0A%23TOC%20%2Etoctitle%20%7B%0Afont%2Dweight%3A%20bold%3B%0Afont%2Dsize%3A%2015px%3B%0Amargin%2Dleft%3A%205px%3B%0A%7D%0A%23TOC%20ul%20%7B%0Apadding%2Dleft%3A%2040px%3B%0Amargin%2Dleft%3A%20%2D1%2E5em%3B%0Amargin%2Dtop%3A%205px%3B%0Amargin%2Dbottom%3A%205px%3B%0A%7D%0A%23TOC%20ul%20ul%20%7B%0Amargin%2Dleft%3A%20%2D2em%3B%0A%7D%0A%23TOC%20li%20%7B%0Aline%2Dheight%3A%2016px%3B%0A%7D%0Atable%20%7B%0Amargin%3A%201em%20auto%3B%0Aborder%2Dwidth%3A%201px%3B%0Aborder%2Dcolor%3A%20%23DDDDDD%3B%0Aborder%2Dstyle%3A%20outset%3B%0Aborder%2Dcollapse%3A%20collapse%3B%0A%7D%0Atable%20th%20%7B%0Aborder%2Dwidth%3A%202px%3B%0Apadding%3A%205px%3B%0Aborder%2Dstyle%3A%20inset%3B%0A%7D%0Atable%20td%20%7B%0Aborder%2Dwidth%3A%201px%3B%0Aborder%2Dstyle%3A%20inset%3B%0Aline%2Dheight%3A%2018px%3B%0Apadding%3A%205px%205px%3B%0A%7D%0Atable%2C%20table%20th%2C%20table%20td%20%7B%0Aborder%2Dleft%2Dstyle%3A%20none%3B%0Aborder%2Dright%2Dstyle%3A%20none%3B%0A%7D%0Atable%20thead%2C%20table%20tr%2Eeven%20%7B%0Abackground%2Dcolor%3A%20%23f7f7f7%3B%0A%7D%0Ap%20%7B%0Amargin%3A%200%2E5em%200%3B%0A%7D%0Ablockquote%20%7B%0Abackground%2Dcolor%3A%20%23f6f6f6%3B%0Apadding%3A%200%2E25em%200%2E75em%3B%0A%7D%0Ahr%20%7B%0Aborder%2Dstyle%3A%20solid%3B%0Aborder%3A%20none%3B%0Aborder%2Dtop%3A%201px%20solid%20%23777%3B%0Amargin%3A%2028px%200%3B%0A%7D%0Adl%20%7B%0Amargin%2Dleft%3A%200%3B%0A%7D%0Adl%20dd%20%7B%0Amargin%2Dbottom%3A%2013px%3B%0Amargin%2Dleft%3A%2013px%3B%0A%7D%0Adl%20dt%20%7B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0Aul%20%7B%0Amargin%2Dtop%3A%200%3B%0A%7D%0Aul%20li%20%7B%0Alist%2Dstyle%3A%20circle%20outside%3B%0A%7D%0Aul%20ul%20%7B%0Amargin%2Dbottom%3A%200%3B%0A%7D%0Apre%2C%20code%20%7B%0Abackground%2Dcolor%3A%20%23f7f7f7%3B%0Aborder%2Dradius%3A%203px%3B%0Acolor%3A%20%23333%3B%0Awhite%2Dspace%3A%20pre%2Dwrap%3B%20%0A%7D%0Apre%20%7B%0Aborder%2Dradius%3A%203px%3B%0Amargin%3A%205px%200px%2010px%200px%3B%0Apadding%3A%2010px%3B%0A%7D%0Apre%3Anot%28%5Bclass%5D%29%20%7B%0Abackground%2Dcolor%3A%20%23f7f7f7%3B%0A%7D%0Acode%20%7B%0Afont%2Dfamily%3A%20Consolas%2C%20Monaco%2C%20%27Courier%20New%27%2C%20monospace%3B%0Afont%2Dsize%3A%2085%25%3B%0A%7D%0Ap%20%3E%20code%2C%20li%20%3E%20code%20%7B%0Apadding%3A%202px%200px%3B%0A%7D%0Adiv%2Efigure%20%7B%0Atext%2Dalign%3A%20center%3B%0A%7D%0Aimg%20%7B%0Abackground%2Dcolor%3A%20%23FFFFFF%3B%0Apadding%3A%202px%3B%0Aborder%3A%201px%20solid%20%23DDDDDD%3B%0Aborder%2Dradius%3A%203px%3B%0Aborder%3A%201px%20solid%20%23CCCCCC%3B%0Amargin%3A%200%205px%3B%0A%7D%0Ah1%20%7B%0Amargin%2Dtop%3A%200%3B%0Afont%2Dsize%3A%2035px%3B%0Aline%2Dheight%3A%2040px%3B%0A%7D%0Ah2%20%7B%0Aborder%2Dbottom%3A%204px%20solid%20%23f7f7f7%3B%0Apadding%2Dtop%3A%2010px%3B%0Apadding%2Dbottom%3A%202px%3B%0Afont%2Dsize%3A%20145%25%3B%0A%7D%0Ah3%20%7B%0Aborder%2Dbottom%3A%202px%20solid%20%23f7f7f7%3B%0Apadding%2Dtop%3A%2010px%3B%0Afont%2Dsize%3A%20120%25%3B%0A%7D%0Ah4%20%7B%0Aborder%2Dbottom%3A%201px%20solid%20%23f7f7f7%3B%0Amargin%2Dleft%3A%208px%3B%0Afont%2Dsize%3A%20105%25%3B%0A%7D%0Ah5%2C%20h6%20%7B%0Aborder%2Dbottom%3A%201px%20solid%20%23ccc%3B%0Afont%2Dsize%3A%20105%25%3B%0A%7D%0Aa%20%7B%0Acolor%3A%20%230033dd%3B%0Atext%2Ddecoration%3A%20none%3B%0A%7D%0Aa%3Ahover%20%7B%0Acolor%3A%20%236666ff%3B%20%7D%0Aa%3Avisited%20%7B%0Acolor%3A%20%23800080%3B%20%7D%0Aa%3Avisited%3Ahover%20%7B%0Acolor%3A%20%23BB00BB%3B%20%7D%0Aa%5Bhref%5E%3D%22http%3A%22%5D%20%7B%0Atext%2Ddecoration%3A%20underline%3B%20%7D%0Aa%5Bhref%5E%3D%22https%3A%22%5D%20%7B%0Atext%2Ddecoration%3A%20underline%3B%20%7D%0A%0Acode%20%3E%20span%2Ekw%20%7B%20color%3A%20%23555%3B%20font%2Dweight%3A%20bold%3B%20%7D%20%0Acode%20%3E%20span%2Edt%20%7B%20color%3A%20%23902000%3B%20%7D%20%0Acode%20%3E%20span%2Edv%20%7B%20color%3A%20%2340a070%3B%20%7D%20%0Acode%20%3E%20span%2Ebn%20%7B%20color%3A%20%23d14%3B%20%7D%20%0Acode%20%3E%20span%2Efl%20%7B%20color%3A%20%23d14%3B%20%7D%20%0Acode%20%3E%20span%2Ech%20%7B%20color%3A%20%23d14%3B%20%7D%20%0Acode%20%3E%20span%2Est%20%7B%20color%3A%20%23d14%3B%20%7D%20%0Acode%20%3E%20span%2Eco%20%7B%20color%3A%20%23888888%3B%20font%2Dstyle%3A%20italic%3B%20%7D%20%0Acode%20%3E%20span%2Eot%20%7B%20color%3A%20%23007020%3B%20%7D%20%0Acode%20%3E%20span%2Eal%20%7B%20color%3A%20%23ff0000%3B%20font%2Dweight%3A%20bold%3B%20%7D%20%0Acode%20%3E%20span%2Efu%20%7B%20color%3A%20%23900%3B%20font%2Dweight%3A%20bold%3B%20%7D%20%20code%20%3E%20span%2Eer%20%7B%20color%3A%20%23a61717%3B%20background%2Dcolor%3A%20%23e3d2d2%3B%20%7D%20%0A" rel="stylesheet" type="text/css" />

</head>

<body>




<h1 class="title toc-ignore">Vignette Title</h1>
<h4 class="author"><em>Vignette Author</em></h4>
<h4 class="date"><em>2018-02-13</em></h4>



<p>Vignettes are long form documentation commonly included in packages. Because they are part of the distribution of the package, they need to be as compact as possible. The <code>html_vignette</code> output type provides a custom style sheet (and tweaks some options) to ensure that the resulting html is as small as possible. The <code>html_vignette</code> format:</p>
<ul>
<li>Never uses retina figures</li>
<li>Has a smaller default figure size</li>
<li>Uses a custom CSS stylesheet instead of the default Twitter Bootstrap style</li>
</ul>
<div id="vignette-info" class="section level2">
<h2>Vignette Info</h2>
<p>Note the various macros within the <code>vignette</code> section of the metadata block above. These are required in order to instruct R how to build the vignette. Note that you should change the <code>title</code> field and the <code>\VignetteIndexEntry</code> to match the title of your vignette.</p>
</div>
<div id="styles" class="section level2">
<h2>Styles</h2>
<p>The <code>html_vignette</code> template includes a basic CSS theme. To override this theme you can specify your own CSS in the document metadata as follows:</p>
<pre><code>output: 
  rmarkdown::html_vignette:
    css: mystyles.css</code></pre>
</div>
<div id="figures" class="section level2">
<h2>Figures</h2>
<p>The figure sizes have been customised so that you can easily put two images side-by-side.</p>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class="kw">plot</span>(<span class="dv">1</span><span class="op">:</span><span class="dv">10</span>)
<span class="kw">plot</span>(<span class="dv">10</span><span class="op">:</span><span class="dv">1</span>)</code></pre></div>
<p><img src="data:image/png;base64,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" /><img src="data:image/png;base64,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" /></p>
<p>You can enable figure captions by <code>fig_caption: yes</code> in YAML:</p>
<pre><code>output:
  rmarkdown::html_vignette:
    fig_caption: yes</code></pre>
<p>Then you can use the chunk option <code>fig.cap = &quot;Your figure caption.&quot;</code> in <strong>knitr</strong>.</p>
</div>
<div id="more-examples" class="section level2">
<h2>More Examples</h2>
<p>You can write math expressions, e.g. <span class="math inline">\(Y = X\beta + \epsilon\)</span>, footnotes<a href="#fn1" class="footnoteRef" id="fnref1"><sup>1</sup></a>, and tables, e.g. using <code>knitr::kable()</code>.</p>
<table>
<thead>
<tr class="header">
<th></th>
<th align="right">mpg</th>
<th align="right">cyl</th>
<th align="right">disp</th>
<th align="right">hp</th>
<th align="right">drat</th>
<th align="right">wt</th>
<th align="right">qsec</th>
<th align="right">vs</th>
<th align="right">am</th>
<th align="right">gear</th>
<th align="right">carb</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Mazda RX4</td>
<td align="right">21.0</td>
<td align="right">6</td>
<td align="right">160.0</td>
<td align="right">110</td>
<td align="right">3.90</td>
<td align="right">2.620</td>
<td align="right">16.46</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">4</td>
<td align="right">4</td>
</tr>
<tr class="even">
<td>Mazda RX4 Wag</td>
<td align="right">21.0</td>
<td align="right">6</td>
<td align="right">160.0</td>
<td align="right">110</td>
<td align="right">3.90</td>
<td align="right">2.875</td>
<td align="right">17.02</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">4</td>
<td align="right">4</td>
</tr>
<tr class="odd">
<td>Datsun 710</td>
<td align="right">22.8</td>
<td align="right">4</td>
<td align="right">108.0</td>
<td align="right">93</td>
<td align="right">3.85</td>
<td align="right">2.320</td>
<td align="right">18.61</td>
<td align="right">1</td>
<td align="right">1</td>
<td align="right">4</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td>Hornet 4 Drive</td>
<td align="right">21.4</td>
<td align="right">6</td>
<td align="right">258.0</td>
<td align="right">110</td>
<td align="right">3.08</td>
<td align="right">3.215</td>
<td align="right">19.44</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">1</td>
</tr>
<tr class="odd">
<td>Hornet Sportabout</td>
<td align="right">18.7</td>
<td align="right">8</td>
<td align="right">360.0</td>
<td align="right">175</td>
<td align="right">3.15</td>
<td align="right">3.440</td>
<td align="right">17.02</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">2</td>
</tr>
<tr class="even">
<td>Valiant</td>
<td align="right">18.1</td>
<td align="right">6</td>
<td align="right">225.0</td>
<td align="right">105</td>
<td align="right">2.76</td>
<td align="right">3.460</td>
<td align="right">20.22</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">1</td>
</tr>
<tr class="odd">
<td>Duster 360</td>
<td align="right">14.3</td>
<td align="right">8</td>
<td align="right">360.0</td>
<td align="right">245</td>
<td align="right">3.21</td>
<td align="right">3.570</td>
<td align="right">15.84</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">4</td>
</tr>
<tr class="even">
<td>Merc 240D</td>
<td align="right">24.4</td>
<td align="right">4</td>
<td align="right">146.7</td>
<td align="right">62</td>
<td align="right">3.69</td>
<td align="right">3.190</td>
<td align="right">20.00</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">4</td>
<td align="right">2</td>
</tr>
<tr class="odd">
<td>Merc 230</td>
<td align="right">22.8</td>
<td align="right">4</td>
<td align="right">140.8</td>
<td align="right">95</td>
<td align="right">3.92</td>
<td align="right">3.150</td>
<td align="right">22.90</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">4</td>
<td align="right">2</td>
</tr>
<tr class="even">
<td>Merc 280</td>
<td align="right">19.2</td>
<td align="right">6</td>
<td align="right">167.6</td>
<td align="right">123</td>
<td align="right">3.92</td>
<td align="right">3.440</td>
<td align="right">18.30</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">4</td>
<td align="right">4</td>
</tr>
</tbody>
</table>
<p>Also a quote using <code>&gt;</code>:</p>
<blockquote>
<p>“He who gives up [code] safety for [code] speed deserves neither.” (<a href="https://twitter.com/hadleywickham/status/504368538874703872">via</a>)</p>
</blockquote>
</div>
<div class="footnotes">
<hr />
<ol>
<li id="fn1"><p>A footnote here.<a href="#fnref1">↩</a></p></li>
</ol>
</div>



<!-- dynamically load mathjax for compatibility with self-contained -->
<script>
  (function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src  = "https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
    document.getElementsByTagName("head")[0].appendChild(script);
  })();
</script>

</body>
</html>
