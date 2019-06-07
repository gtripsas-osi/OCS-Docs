<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Types </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Types ">
    <meta name="generator" content="docfx 2.39.2.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../toc.html">
    
    <meta property="docfx:rel" content="../../">
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../index.html" width="46">
                <img id="logo" src="../../Documentation/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Cloud Serices"> 
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list"></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="sdsTypes">
<h1 id="types" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="5" sourceendlinenumber="5">Types</h1>

<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="7" sourceendlinenumber="9">The Sequential Data Store (SDS) stores streams of events and provides convenient ways to find and associate 
events. Events are stored in streams, called SdsStreams. An SdsType defines the shape or structure of the 
event and how to associate events within the SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="12" sourceendlinenumber="14">SdsTypes can define simple atomic types, such as integers, floats, strings, arrays, and dictionaries, or 
they can define complex types using SdsTypes. You can define complex, nested types using the Properties 
collection of an SdsType. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="16" sourceendlinenumber="20">An SdsType used to define an SdsStream must have a Key. A Key is a Property, or a combination of Properties 
that constitute an ordered, unique identity. The Key is ordered, so it functions as an index; it is 
known as the Primary Index. While a timestamp (DateTime) is a very common type of Key, any type that 
can be ordered is permitted. Other indexes (secondary indexes), are defined in the SdsStream. 
Indexes are discussed in greater detail here: <a class="xref" href="indexes.html" data-raw-source="[Indexes](xref:sdsIndexes)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="20" sourceendlinenumber="20">Indexes</a></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="22" sourceendlinenumber="24">When defining a type, consider how the events will be represented in a stream. The SdsType defines 
each event in the stream. An event is a single unit whose properties have values that relate to the 
index; that is, each property of an SdsType event is related to the event’s index. Each event is a single unit.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="26" sourceendlinenumber="26">An SdsType is referenced by its identifier or Id field. SdsType identifiers must be unique within a Namespace.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="28" sourceendlinenumber="29">An SdsType can also refer other SdsTypes by using their identifiers. This enables type re-usability.
Nested types and base types are automatically created as separate types. For further information, see <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="29" sourceendlinenumber="29">Type Reusability</a></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="31" sourceendlinenumber="34">SdsTypes define how events are associated and read within a collection of events, or SdsStream. The read 
characteristics when attempting to read non-existent indexes, indexes that fall between, before or after 
existing indexes, are determined by the interpolation and extrapolation settings of the SdsType. For more 
information about read characteristics see <a href="#interpolation" data-raw-source="[Interpolation](#interpolation)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="34" sourceendlinenumber="34">Interpolation</a> and <a href="#extrapolation" data-raw-source="[Extrapolation](#extrapolation)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="34" sourceendlinenumber="34">Extrapolation</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="36" sourceendlinenumber="38">SdsTypes are mostly immutable. When an SdsType is referenced by a stream or a stream view or another type, its form  cannot be changed. 
Certain fields, such as the friendly name or description, can be changed because they do not affect the function 
of the SdsType. In addition, the SdsType may be deleted only if no streams or stream views or types reference it.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="40" sourceendlinenumber="42">Only SdsTypes used to define SdsStreams or SdsStreamViews are required to be added to the Sequential data store. 
SdsTypes that define Properties or base types are contained within the parent SdsType and are not required
to be added to the Data Store independently.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="44" sourceendlinenumber="45">The following table shows the required and optional SdsType fields. Fields that are not included are reserved for internal SDS use. 
See the <a class="xref" href="Searching.html" data-raw-source="[Searching](xref:sdsSearching)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="45" sourceendlinenumber="45">Searching</a> topic regarding limitations on search.</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="48" sourceendlinenumber="56">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Optionality</th>
<th>Searchable</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>String</td>
<td>Required</td>
<td>Yes</td>
<td>Identifier for referencing the type</td>
</tr>
<tr>
<td>Name</td>
<td>String</td>
<td>Optional</td>
<td>Yes</td>
<td>Friendly name</td>
</tr>
<tr>
<td>Description</td>
<td>String</td>
<td>Optional</td>
<td>Yes</td>
<td>Description text</td>
</tr>
<tr>
<td>SdsTypeCode</td>
<td>SdsTypeCode</td>
<td>Required</td>
<td>No</td>
<td>Numeric code identifying the base SdsType</td>
</tr>
<tr>
<td>InterpolationMode</td>
<td>SdsInterpolationMode</td>
<td>Optional</td>
<td>No</td>
<td>Interpolation setting of the type. Default is Continuous.</td>
</tr>
<tr>
<td>ExtrapolationMode</td>
<td>SdsExtrapolationMode</td>
<td>Optional</td>
<td>No</td>
<td>Extrapolation setting of the type. Default is All.</td>
</tr>
<tr>
<td>Properties</td>
<td>IList&lt;SdsTypeProperty></td>
<td>Required</td>
<td>Yes, with limitations</td>
<td>List of SdsTypeProperty items</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="59" sourceendlinenumber="59"><strong>Rules for the Type Identifier (SdsType.Id)</strong></p>
<ol sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="61" sourceendlinenumber="64">
<li sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="61" sourceendlinenumber="61">Is not case sensitive</li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="62" sourceendlinenumber="62">Can contain spaces</li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="63" sourceendlinenumber="63">Cannot contain forward slash (&quot;/&quot;)</li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="64" sourceendlinenumber="64">Can contain a maximum of 100 characters  </li>
</ol>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="66" sourceendlinenumber="67">SdsType management using the .NET SDS Client Libraries is performed through the <code>ISdsMetadataService</code>. 
You can create the <code>ISdsMetadataService</code> using one of the <code>SdsService.GetMetadataService()</code> factory methods.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="69" sourceendlinenumber="70">The .NET libraries provide SdsTypeBuilder to help build SdsTypes from .NET types. SdsTypeBuilder is 
discussed in greater detail below.</p>
<h2 id="sdstypecode" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="73" sourceendlinenumber="73">SdsTypeCode</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="75" sourceendlinenumber="76">The SdsTypeCode is a numeric identifier used by the Data Store to identify SdsTypes. A SdsTypeCode exists for 
every supported type.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="78" sourceendlinenumber="79">Atomic types, such as strings, floats and arrays, are defined entirely by the SdsTypeCode. Atomic 
types do not need fields to define the type.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="81" sourceendlinenumber="82">Types requiring additional definition, such as enums and objects, are identified using a generic 
SdsTypeCode, such as ByteEnum, Int32Enum, NullableInt32Enum, or Object, plus additional SdsProperty fields.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="84" sourceendlinenumber="84"><strong>Supported Types</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="86" sourceendlinenumber="86">The following types are supported and defined by the SdsTypeCode:</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="89" sourceendlinenumber="180">
<thead>
<tr>
<th>Type</th>
<th>SdsTypeCode</th>
</tr>
</thead>
<tbody>
<tr>
<td>Array</td>
<td>400</td>
</tr>
<tr>
<td>Boolean</td>
<td>3</td>
</tr>
<tr>
<td>BooleanArray</td>
<td>203</td>
</tr>
<tr>
<td>Byte</td>
<td>6</td>
</tr>
<tr>
<td>ByteArray</td>
<td>206</td>
</tr>
<tr>
<td>ByteEnum</td>
<td>606</td>
</tr>
<tr>
<td>Char</td>
<td>4</td>
</tr>
<tr>
<td>CharArray</td>
<td>204</td>
</tr>
<tr>
<td>DateTime</td>
<td>16</td>
</tr>
<tr>
<td>DateTimeArray</td>
<td>216</td>
</tr>
<tr>
<td>DateTimeOffset</td>
<td>20</td>
</tr>
<tr>
<td>DateTimeOffsetArray</td>
<td>220</td>
</tr>
<tr>
<td>DBNull</td>
<td>2</td>
</tr>
<tr>
<td>Decimal</td>
<td>15</td>
</tr>
<tr>
<td>DecimalArray</td>
<td>215</td>
</tr>
<tr>
<td>Double</td>
<td>14</td>
</tr>
<tr>
<td>DoubleArray</td>
<td>214</td>
</tr>
<tr>
<td>Empty</td>
<td>0</td>
</tr>
<tr>
<td>Guid</td>
<td>19</td>
</tr>
<tr>
<td>GuidArray</td>
<td>219</td>
</tr>
<tr>
<td>IDictionary</td>
<td>402</td>
</tr>
<tr>
<td>IEnumerable</td>
<td>403</td>
</tr>
<tr>
<td>IList</td>
<td>401</td>
</tr>
<tr>
<td>Int16</td>
<td>7</td>
</tr>
<tr>
<td>Int16Array</td>
<td>207</td>
</tr>
<tr>
<td>Int16Enum</td>
<td>607</td>
</tr>
<tr>
<td>Int32</td>
<td>9</td>
</tr>
<tr>
<td>Int32Array</td>
<td>209</td>
</tr>
<tr>
<td>Int32Enum</td>
<td>609</td>
</tr>
<tr>
<td>Int64</td>
<td>11</td>
</tr>
<tr>
<td>Int64Array</td>
<td>211</td>
</tr>
<tr>
<td>Int64Enum</td>
<td>611</td>
</tr>
<tr>
<td>NullableBoolean</td>
<td>103</td>
</tr>
<tr>
<td>NullableByte</td>
<td>106</td>
</tr>
<tr>
<td>NullableByteEnum</td>
<td>706</td>
</tr>
<tr>
<td>NullableChar</td>
<td>104</td>
</tr>
<tr>
<td>NullableDateTime</td>
<td>116</td>
</tr>
<tr>
<td>NullableDateTimeOffset</td>
<td>120</td>
</tr>
<tr>
<td>NullableDecimal</td>
<td>115</td>
</tr>
<tr>
<td>NullableDouble</td>
<td>114</td>
</tr>
<tr>
<td>NullableGuid</td>
<td>119</td>
</tr>
<tr>
<td>NullableInt16</td>
<td>107</td>
</tr>
<tr>
<td>NullableInt16Enum</td>
<td>707</td>
</tr>
<tr>
<td>NullableInt32</td>
<td>109</td>
</tr>
<tr>
<td>NullableInt32Enum</td>
<td>709</td>
</tr>
<tr>
<td>NullableInt64</td>
<td>111</td>
</tr>
<tr>
<td>NullableInt64Enum</td>
<td>711</td>
</tr>
<tr>
<td>NullableSByte</td>
<td>105</td>
</tr>
<tr>
<td>NullableSByteEnum</td>
<td>705</td>
</tr>
<tr>
<td>NullableSingle</td>
<td>113</td>
</tr>
<tr>
<td>NullableTimeSpan</td>
<td>121</td>
</tr>
<tr>
<td>NullableUInt16</td>
<td>108</td>
</tr>
<tr>
<td>NullableUInt16Enum</td>
<td>708</td>
</tr>
<tr>
<td>NullableUInt32</td>
<td>110</td>
</tr>
<tr>
<td>NullableUInt32Enum</td>
<td>710</td>
</tr>
<tr>
<td>NullableUInt64</td>
<td>112</td>
</tr>
<tr>
<td>NullableUInt64Enum</td>
<td>712</td>
</tr>
<tr>
<td>Object</td>
<td>1</td>
</tr>
<tr>
<td>SdsColumn</td>
<td>510</td>
</tr>
<tr>
<td>SdsObject</td>
<td>512</td>
</tr>
<tr>
<td>SdsStream</td>
<td>507</td>
</tr>
<tr>
<td>SdsStreamIndex</td>
<td>508</td>
</tr>
<tr>
<td>SdsTable</td>
<td>509</td>
</tr>
<tr>
<td>SdsType</td>
<td>501</td>
</tr>
<tr>
<td>SdsTypeProperty</td>
<td>502</td>
</tr>
<tr>
<td>SdsValues</td>
<td>511</td>
</tr>
<tr>
<td>SdsStreamView</td>
<td>503</td>
</tr>
<tr>
<td>SdsStreamViewMap</td>
<td>505</td>
</tr>
<tr>
<td>SdsStreamViewMapProperty</td>
<td>506</td>
</tr>
<tr>
<td>SdsStreamViewProperty</td>
<td>504</td>
</tr>
<tr>
<td>SByte</td>
<td>5</td>
</tr>
<tr>
<td>SByteArray</td>
<td>205</td>
</tr>
<tr>
<td>SByteEnum</td>
<td>605</td>
</tr>
<tr>
<td>Single</td>
<td>13</td>
</tr>
<tr>
<td>SingleArray</td>
<td>213</td>
</tr>
<tr>
<td>String</td>
<td>18</td>
</tr>
<tr>
<td>StringArray</td>
<td>218</td>
</tr>
<tr>
<td>TimeSpan</td>
<td>21</td>
</tr>
<tr>
<td>TimeSpanArray</td>
<td>221</td>
</tr>
<tr>
<td>UInt16</td>
<td>8</td>
</tr>
<tr>
<td>UInt16Array</td>
<td>208</td>
</tr>
<tr>
<td>UInt16Enum</td>
<td>608</td>
</tr>
<tr>
<td>UInt32</td>
<td>10</td>
</tr>
<tr>
<td>UInt32Array</td>
<td>210</td>
</tr>
<tr>
<td>UInt32Enum</td>
<td>610</td>
</tr>
<tr>
<td>UInt64</td>
<td>12</td>
</tr>
<tr>
<td>UInt64Array</td>
<td>212</td>
</tr>
<tr>
<td>UInt64Enum</td>
<td>612</td>
</tr>
<tr>
<td>Version</td>
<td>22</td>
</tr>
<tr>
<td>VersionArray</td>
<td>222</td>
</tr>
</tbody>
</table>
<h2 id="interpolation" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="183" sourceendlinenumber="183">Interpolation</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="185" sourceendlinenumber="187">Interpolation determines how a stream behaves when asked to return an event at an index between 
two existing events. InterpolationMode determines how the returned event is constructed. The table 
below lists InterpolationModes:</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="189" sourceendlinenumber="195">
<thead>
<tr>
<th>Mode</th>
<th>Enumeration value</th>
<th>Operation</th>
</tr>
</thead>
<tbody>
<tr>
<td>Default</td>
<td>0</td>
<td>The default InterpolationMode is Continuous</td>
</tr>
<tr>
<td>Continuous</td>
<td>0</td>
<td>Interpolates the data using previous and next index values</td>
</tr>
<tr>
<td>StepwiseContinuousLeading</td>
<td>1</td>
<td>Returns the data from the previous index</td>
</tr>
<tr>
<td>StepwiseContinuousTrailing</td>
<td>2</td>
<td>Returns the data from the next index</td>
</tr>
<tr>
<td>Discrete</td>
<td>3</td>
<td>Returns ‘null’</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="197" sourceendlinenumber="197">Note that <code>Continuous</code> cannot return events for values that cannot be interpolated, such as when the type is not numeric.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="199" sourceendlinenumber="200">The table below describes how the <strong>Continuous InterpolationMode</strong> affects
indexes that occur between data in a stream:</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="202" sourceendlinenumber="202"><strong>InterpolationMode = Continuous or Default</strong></p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="204" sourceendlinenumber="215">
<thead>
<tr>
<th>Type</th>
<th>Result for an index between data in a stream</th>
<th>Comment</th>
</tr>
</thead>
<tbody>
<tr>
<td>Numeric Types</td>
<td>Interpolated*</td>
<td>Rounding is done as needed for integer types</td>
</tr>
<tr>
<td>Time related Types</td>
<td>Interpolated</td>
<td>DateTime, DateTimeOffset, TimeSpan</td>
</tr>
<tr>
<td>Nullable Types</td>
<td>Interpolated**</td>
<td>Limited support for nullable numeric types</td>
</tr>
<tr>
<td>Array and List Types</td>
<td>No event is returned</td>
<td></td>
</tr>
<tr>
<td>String Type</td>
<td>No event is returned</td>
<td></td>
</tr>
<tr>
<td>Boolean Type</td>
<td>Returns value of nearest index</td>
<td></td>
</tr>
<tr>
<td>Enumeration Types</td>
<td>Returns Enum value at 0</td>
<td>This may have a value for the enumeration</td>
</tr>
<tr>
<td>GUID</td>
<td>No event is returned</td>
<td></td>
</tr>
<tr>
<td>Version</td>
<td>No event is returned</td>
<td></td>
</tr>
<tr>
<td>IDictionary or IEnumerable</td>
<td>No event is returned</td>
<td>Dictionary, Array, List, and so on.</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="217" sourceendlinenumber="218">*When extreme values are involved in an interpolation (for example
Decimal.MaxValue) the call might result in a BadRequest exception.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="220" sourceendlinenumber="220">**Nullable types are interpolated in the same manner as their non-nulllable equivalents as long as the values surrounding the desired interpolation index are non-null. If either of the values are null, the interpolated value will be null.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="222" sourceendlinenumber="224">If the InterpolationMode is not assigned, the events are interpolated in the default manner, unless the interpolation 
mode is overridden in the SdsTypeProperty or the SdsStream. For more information on overriding the interpolation mode 
on a specific type property see <a href="#sdstypeproperty" data-raw-source="[SdsTypeProperty](#sdstypeproperty)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="224" sourceendlinenumber="224">SdsTypeProperty</a>. For more information on overriding the interpolation mode for a specific stream see <a class="xref" href="SDS_Streams.html" data-raw-source="[Sds Streams](xref:sdsStreams)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="224" sourceendlinenumber="224">Sds Streams</a>.</p>
<h2 id="extrapolation" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="227" sourceendlinenumber="227">Extrapolation</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="229" sourceendlinenumber="231">Extrapolation defines how a stream responds to requests with indexes that precede or follow all 
data in the steam. ExtrapolationMode acts as a master switch to determine whether extrapolation 
occurs and at which end of the data. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="233" sourceendlinenumber="234">ExtrapolationMode works with the InterpolationMode to determine how a stream responds. The following tables 
show how ExtrapolationMode affects returned values for each InterpolationMode value:</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="236" sourceendlinenumber="236"><strong>ExtrapolationMode with InterpolationMode = Default or Continuous</strong></p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="238" sourceendlinenumber="243">
<thead>
<tr>
<th>ExtrapolationMode</th>
<th>Enumeration value</th>
<th>Index before data</th>
<th>Index after data</th>
</tr>
</thead>
<tbody>
<tr>
<td>All</td>
<td>0</td>
<td>Returns first data value</td>
<td>Returns last data value</td>
</tr>
<tr>
<td>None</td>
<td>1</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
<tr>
<td>Forward</td>
<td>2</td>
<td>No event is returned</td>
<td>Returns last data value</td>
</tr>
<tr>
<td>Backward</td>
<td>3</td>
<td>Returns first data value</td>
<td>No event is returned</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="245" sourceendlinenumber="245"><strong>ExtrapolationMode with InterpolationMode = Discrete</strong></p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="247" sourceendlinenumber="252">
<thead>
<tr>
<th>ExtrapolationMode</th>
<th>Enumeration value</th>
<th>Index before data</th>
<th>Index after data</th>
</tr>
</thead>
<tbody>
<tr>
<td>All</td>
<td>0</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
<tr>
<td>None</td>
<td>1</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
<tr>
<td>Forward</td>
<td>2</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
<tr>
<td>Backward</td>
<td>3</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="254" sourceendlinenumber="254"><strong>ExtrapolationMode with InterpolationMode = StepwiseContinuousLeading</strong></p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="256" sourceendlinenumber="261">
<thead>
<tr>
<th>ExtrapolationMode</th>
<th>Enumeration value</th>
<th>Index before data</th>
<th>Index after data</th>
</tr>
</thead>
<tbody>
<tr>
<td>All</td>
<td>0</td>
<td>Returns first data value</td>
<td>Returns last data value</td>
</tr>
<tr>
<td>None</td>
<td>1</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
<tr>
<td>Forward</td>
<td>2</td>
<td>No event is returned</td>
<td>Returns last data value</td>
</tr>
<tr>
<td>Backward</td>
<td>3</td>
<td>Returns first data value</td>
<td>No event is returned</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="263" sourceendlinenumber="263"><strong>ExtrapolationMode with InterpolationMode = StepwiseContinuousTrailing</strong></p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="265" sourceendlinenumber="270">
<thead>
<tr>
<th>ExtrapolationMode</th>
<th>Enumeration value</th>
<th>Index before data</th>
<th>Index after data</th>
</tr>
</thead>
<tbody>
<tr>
<td>All</td>
<td>0</td>
<td>Returns first data value</td>
<td>Returns last data value</td>
</tr>
<tr>
<td>None</td>
<td>1</td>
<td>No event is returned</td>
<td>No event is returned</td>
</tr>
<tr>
<td>Forward</td>
<td>2</td>
<td>No event is returned</td>
<td>Returns last data value</td>
</tr>
<tr>
<td>Backward</td>
<td>3</td>
<td>Returns first data value</td>
<td>No event is returned</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="273" sourceendlinenumber="273">If the ExtrapolationMode is not assigned, the events are extrapolated in the default manner, unless the extrapolation mode is overridden on the SdsStream. For more information on overriding the extrapolation mode on a specific stream see <a class="xref" href="SDS_Streams.html" data-raw-source="[Sds Streams](xref:sdsStreams)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="273" sourceendlinenumber="273">Sds Streams</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="275" sourceendlinenumber="277">For additional information about the effect of read characteristics, see the
documentation on the <a class="xref" href="Reading_Data_API.html" data-raw-source="[read method](xref:sdsReadingDataApi)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="276" sourceendlinenumber="276">read method</a>
you are using.</p>
<h2 id="sdstypeproperty" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="279" sourceendlinenumber="279">SdsTypeProperty</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="281" sourceendlinenumber="281">The Properties collection define the fields in an SdsType. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="283" sourceendlinenumber="284">The following table shows the required and optional SdsTypeProperty fields. Fields that 
are not included are reserved for internal SDS use.</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="286" sourceendlinenumber="296">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Optionality</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>String</td>
<td>Required</td>
<td>Identifier for referencing the type</td>
</tr>
<tr>
<td>Name</td>
<td>String</td>
<td>Optional</td>
<td>Friendly name</td>
</tr>
<tr>
<td>Description</td>
<td>String</td>
<td>Optional</td>
<td>Description text</td>
</tr>
<tr>
<td>SdsType</td>
<td>SdsType</td>
<td>Required</td>
<td>Field defining the property&#39;s Type</td>
</tr>
<tr>
<td>IsKey</td>
<td>Boolean</td>
<td>Required</td>
<td>Identifies the property as the Key (Primary Index)</td>
</tr>
<tr>
<td>Value</td>
<td>Object</td>
<td>Optional</td>
<td>Value of the property</td>
</tr>
<tr>
<td>Order</td>
<td>Int</td>
<td>Optional</td>
<td>Order of comparison within a compound index</td>
</tr>
<tr>
<td>InterpolationMode</td>
<td>SdsInterpolationMode</td>
<td>Optional</td>
<td>Interpolation setting of the property. Default is null.</td>
</tr>
<tr>
<td>Uom</td>
<td>String</td>
<td>Optional</td>
<td>Unit of Measure of the property</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="299" sourceendlinenumber="299">The SdsTypeProperty’s identifier follows the same rules as the SdsType’s identifier.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="301" sourceendlinenumber="302">IsKey is a Boolean value used to identify the SdsType’s Key. A Key defined by more than one 
Property is called a compound key. The maximum number of Properties that can define a compound key is three. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="304" sourceendlinenumber="305">In a compound key, each Property that is included in the 
Key is specified as IsKey. The Order field defines the precedence of fields applied to the Index.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="307" sourceendlinenumber="310">The Value field is used for properties that represent a value. An example of a property with a 
value is an enum’s named constant. When representing an enum in a SdsType, the SdsType’s 
Properties collection defines the enum’s constant list. The SdsTypeProperty’s Identifier represents 
the constant’s name and the SdsTypeProperty’s Value represents the constant’s value (see the enum State definitions below).</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="312" sourceendlinenumber="315">InterpolationMode is assigned when the Property of the event should be interpolated in a specific way 
that differs from the InterpolationMode of the SdsType. InterpolationMode is only applied to a Property 
that is not part of the Index. If the InterpolationMode is not set, the Property is are interpolated 
in the manner defined by the SdsType’s IntepolationMode.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="318" sourceendlinenumber="319">An SdsType with the InterpolationMode set to <code>Discrete</code> cannot have a Property with an InteroplationMode. 
For more information on interpolation of events see <a href="#interpolation" data-raw-source="[Interpolation](#interpolation)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="319" sourceendlinenumber="319">Interpolation</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="322" sourceendlinenumber="323">Uom is the unit of measure for the Property. The Uom of a Property may be specified by the name or the 
abbreviation. The names and abbreviations of Uoms are case sensitive. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="325" sourceendlinenumber="325">The InterpolationMode and Uom of a Property can be overridden on the stream. For more information, see <a class="xref" href="SDS_Streams.html#propertyoverrides" data-raw-source="[Streams](xref:sdsStreams#propertyoverrides)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="325" sourceendlinenumber="325">Streams</a>.</p>
<h2 id="supported-units-of-measure" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="327" sourceendlinenumber="327">Supported Units of Measure</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="329" sourceendlinenumber="329">For a list of units of measures that are supported for an SdsTypeProperty, see <a class="xref" href="Units_of_Measure.html#supported-units-of-measure" data-raw-source="[Units of Measure](xref:unitsOfMeasure#supported-units-of-measure)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="329" sourceendlinenumber="329">Units of Measure</a>.</p>
<h2 id="working-with-sdstypes-using-net" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="331" sourceendlinenumber="331">Working with SdsTypes using .NET</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="333" sourceendlinenumber="334">When working in .NET, use the SdsTypeBuilder to create SdsTypes. The SdsTypeBuilder eliminates 
potential errors that can occur when working with SdsTypes manually.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="336" sourceendlinenumber="337">There are several ways to work with the builder. The most convenient is to use the static 
methods, as shown here:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="338" sourceendlinenumber="358"><code class="lang-csharp">public enum State
{
    Ok,
    Warning,
    Alarm
}

public class Simple
{
    [SdsMember(IsKey = true, Order = 0)]
    public DateTime Time { get; set; }
    public State State { get; set; }
    public Double Measurement { get; set; }
}

SdsType simpleType = SdsTypeBuilder.CreateSdsType&lt;Simple&gt;();
simpleType.Id = &quot;Simple&quot;;
simpleType.Name = &quot;Simple&quot;;
simpleType.Description = &quot;Basic sample type&quot;;
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="360" sourceendlinenumber="362">SdsTypeBuilder recognizes the <code>System.ComponentModel.DataAnnotations.KeyAttribute</code> and 
its own <code>OSIsoft.Sds.SdsMemberAttribute</code>. When using the SdsMemberAttribute to specify 
the Primary Index, set the IsKey to true.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="364" sourceendlinenumber="365">The type is created with the following parameters. SdsTypeBuilder automatically generates 
unique identifiers. Note that the following table contains only a partial list of fields.</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="367" sourceendlinenumber="420">
<thead>
<tr>
<th>Field</th>
<th>Values</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>Simple</td>
<td></td>
<td></td>
</tr>
<tr>
<td>Name</td>
<td>Simple</td>
<td></td>
<td></td>
</tr>
<tr>
<td>Description</td>
<td>Basic sample type</td>
<td></td>
<td></td>
</tr>
<tr>
<td>Properties</td>
<td>Count = 3</td>
<td></td>
<td></td>
</tr>
<tr>
<td>[0]</td>
<td>Id</td>
<td>Time</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Name</td>
<td>Time</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Description</td>
<td>null</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Order</td>
<td>0</td>
<td></td>
</tr>
<tr>
<td></td>
<td>IsKey</td>
<td>true</td>
<td></td>
</tr>
<tr>
<td></td>
<td>SdsType</td>
<td>Id</td>
<td>c48bfdf5-a271-384b-bf13-bd21d931c1bf</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Name</td>
<td>DateTime</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Description</td>
<td>null</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Properties</td>
<td>null</td>
</tr>
<tr>
<td></td>
<td>Value</td>
<td>null</td>
<td></td>
</tr>
<tr>
<td>[1]</td>
<td>Id</td>
<td>State</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Name</td>
<td>State</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Description</td>
<td>null</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Order</td>
<td>0</td>
<td></td>
</tr>
<tr>
<td></td>
<td>IsKey</td>
<td>false</td>
<td></td>
</tr>
<tr>
<td></td>
<td>SdsType</td>
<td>Id</td>
<td>02728a4f-4a2d-3588-b669-e08f19c35fe5</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Name</td>
<td>State</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Description</td>
<td>null</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Properties</td>
<td>Count = 3</td>
</tr>
<tr>
<td></td>
<td></td>
<td>[0]</td>
<td>Id</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Name</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Description</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Order</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>SdsType</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Value</td>
</tr>
<tr>
<td></td>
<td></td>
<td>[1]</td>
<td>Id</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Name</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Description</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Order</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>SdsType</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Value</td>
</tr>
<tr>
<td></td>
<td></td>
<td>[2]</td>
<td>Id</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Name</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Description</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Order</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>SdsType</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Value</td>
</tr>
<tr>
<td></td>
<td>Value</td>
<td>null</td>
<td></td>
</tr>
<tr>
<td>[2]</td>
<td>Id</td>
<td>Measurement</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Name</td>
<td>Measurement</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Description</td>
<td>null</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Order</td>
<td>0</td>
<td></td>
</tr>
<tr>
<td></td>
<td>IsKey</td>
<td>false</td>
<td></td>
</tr>
<tr>
<td></td>
<td>SdsType</td>
<td>Id</td>
<td>0f4f147f-4369-3388-8e4b-71e20c96f9ad</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Name</td>
<td>Double</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Description</td>
<td>null</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Properties</td>
<td>null</td>
</tr>
<tr>
<td></td>
<td>Value</td>
<td>null</td>
<td></td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="423" sourceendlinenumber="424">The SdsTypeBuilder also supports derived types. Note that you need not add the base types to 
the Data Store before using SdsTypeBuilder. Base types are maintained within the SdsType.</p>
<h2 id="working-with-sdstypes-when-not-using-net" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="426" sourceendlinenumber="426">Working with SdsTypes when not using .NET</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="428" sourceendlinenumber="432">SdsTypes must be built manually when .NET SdsTypeBuilder is unavailable. The following discussion 
refers to the following types and are defined in<br><a href="https://github.com/osisoft/OCS-Samples/tree/master/basic_samples/SDS/Python/SDSPy" data-raw-source="[Python](https://github.com/osisoft/OCS-Samples/tree/master/basic_samples/SDS/Python/SDSPy)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="430" sourceendlinenumber="430">Python</a> and 
<a href="https://github.com/osisoft/OCS-Samples/tree/master/basic_samples/SDS/JavaScript" data-raw-source="[JavaScript](https://github.com/osisoft/OCS-Samples/tree/master/basic_samples/SDS/JavaScript)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="431" sourceendlinenumber="431">JavaScript</a> samples. 
Samples in other languages can be found here: <a href="https://github.com/osisoft/OCS-Samples/tree/master/basic_samples" data-raw-source="[Samples](https://github.com/osisoft/OCS-Samples/tree/master/basic_samples)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="432" sourceendlinenumber="432">Samples</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="434" sourceendlinenumber="434">In the sample code, <code>SdsType</code>, <code>SdsTypeProperty</code>, and <code>SdsTypeCode</code> are defined as in the code snippets shown here:</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="436" sourceendlinenumber="436"><strong>Python</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="437" sourceendlinenumber="509"><code class="lang-python">class SdsTypeCode(Enum):
    Empty = 0
    Object = 1
    DBNull = 2
    Boolean = 3
    Char = 4
      ...
class SdsTypeProperty(object):
    &quot;&quot;&quot;SDS type property definition&quot;&quot;&quot;

    def __init__(self):
            self.__isKey = False

    @property
    def Id(self):
        return self.__id
    @Id.setter
    def Id(self, id):
        self.__id = id

      ...

    @property
    def IsKey(self):
        return self.__isKey
    @IsKey.setter
    def IsKey(self, iskey):
        self.__isKey = iskey

    @property
    def SdsType(self):
        return self.__SdsType
    @SdsType.setter
    def SdsType(self, SdsType):
        self.__SdsType=SdsType
      ...

class SdsType(object):
    &quot;&quot;&quot;SDS type definitions&quot;&quot;&quot;
    def __init__(self):
        self.SdsTypeCode = SdsTypeCode.Object

    @property
    def Id(self):
        return self.__id
    @Id.setter
    def Id(self, id):
        self.__id = id

      ...

    @property
    def BaseType(self):
        return self.__baseType
    @BaseType.setter
    def BaseType(self, baseType):
        self.__baseType = baseType

    @property
    def SdsTypeCode(self):
        return self.__typeCode
    @SdsTypeCode.setter
    def SdsTypeCode(self, typeCode):
        self.__typeCode = typeCode

    @property
    def Properties(self):
        return self.__properties
    @Properties.setter
    def Properties(self, properties):
        self.__properties = properties
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="512" sourceendlinenumber="512"><strong>JavaScript</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="513" sourceendlinenumber="555"><code class="lang-javascript">SdsTypeCodeMap: {
    Empty: 0,
    &quot;Object&quot;: 1,
    DBNull: 2,
    &quot;Boolean&quot;: 3,
    Char: 4,
    ...
SdsTypeProperty: function (SdsTypeProperty) {
    if (SdsTypeProperty.Id) {
        this.Id = SdsTypeProperty.Id;
    }
    if (SdsTypeProperty.Name) {
        this.Name = SdsTypeProperty.Name;
    }
    if (SdsTypeProperty.Description) {
        this.Description = SdsTypeProperty.Description;
    }
    if (SdsTypeProperty.SdsType) {
        this.SdsType = SdsTypeProperty.SdsType;
    }
    if (SdsTypeProperty.IsKey) {
        this.IsKey = SdsTypeProperty.IsKey;
    }
},
SdsType: function (SdsType) {
    if (SdsType.Id) {
        this.Id = SdsType.Id
    }
    if (SdsType.Name) {
        this.Name = SdsType.Name;
    }
    if (SdsType.Description) {
        this.Description = SdsType.Description;
    }
    if (SdsType.SdsTypeCode) {
        this.SdsTypeCode = SdsType.SdsTypeCode;
    }
    if (SdsType.Properties) {
        this.Properties = SdsType.Properties;
    }
},
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="558" sourceendlinenumber="558">Working with the following types (both Python and JavaScript classes are shown):</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="561" sourceendlinenumber="561"><strong>Python</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="562" sourceendlinenumber="586"><code class="lang-python">class State(Enum):
    Ok = 0
    Warning = 1
    Alarm = 2

class Simple(object):
    Time = property(getTime, setTime)
    def getTime(self):
        return self.__time
    def setTime(self, time):
        self.__time = time

    State = property(getState, setState)
    def getState(self):
        return self.__state
    def setState(self, state):
        self.__state = state

    Measurement = property(getMeasurement, setMeasurement)
    def getMeasurement(self):
        return self.__measurement
    def setMeasurement(self, measurement):
        self.__measurement = measurement
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="588" sourceendlinenumber="588"><strong>JavaScript</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="589" sourceendlinenumber="602"><code class="lang-javascript">var State =
{
    Ok: 0,
    Warning: 1,
    Alarm: 2,
}

var Simple = function () {
    this.Time = null;
    this.State = null;
    this.Measurement = null;
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="604" sourceendlinenumber="604">Define the SdsType as follows:</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="606" sourceendlinenumber="606"><strong>Python</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="607" sourceendlinenumber="657"><code class="lang-python"># Create the properties

# Time is the primary key
time = SdsTypeProperty()
time.Id = &quot;Time&quot;
time.Name = &quot;Time&quot;
time.IsKey = True
time.SdsType = SdsType()
time.SdsType.Id = &quot;DateTime&quot;
time.SdsType.Name = &quot;DateTime&quot;
time.SdsType.SdsTypeCode = SdsTypeCode.DateTime

# State is not a pre-defined type. A SdsType must be defined to represent the enum
stateTypePropertyOk = SdsTypeProperty()
stateTypePropertyOk.Id = &quot;Ok&quot;
stateTypePropertyOk.Value = State.Ok
stateTypePropertyWarning = SdsTypeProperty()
stateTypePropertyWarning.Id = &quot;Warning&quot;
stateTypePropertyWarning.Value = State.Warning
stateTypePropertyAlarm = SdsTypeProperty()
stateTypePropertyAlarm.Id = &quot;Alarm&quot;
stateTypePropertyAlarm.Value = State.Alarm

stateType = SdsType()
stateType.Id = &quot;State&quot;
stateType.Name = &quot;State&quot;
stateType.Properties = [ stateTypePropertyOk, stateTypePropertyWarning, \
                        stateTypePropertyAlarm ]

state = SdsTypeProperty()
state.Id = &quot;State&quot;
state.Name = &quot;State&quot;
state.SdsType = stateType

# Value property is a simple non-indexed, pre-defined type
value = SdsTypeProperty()
value.Id = &quot;Measurement&quot;
value.Name = &quot;Measurement&quot;
value.SdsType = SdsType()
value.SdsType.Id = &quot;Double&quot;
value.SdsType.Name = &quot;Double&quot;

# Create the Simple SdsType
simpleType = SdsType()
simpleType.Id = &quot;Simple&quot;
simpleType.Name = &quot;Simple&quot;
simpleType.Description = &quot;Basic sample type&quot;
simpleType.SdsTypeCode = SdsTypeCode.Object
simpleType.Properties = [ time ]
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="659" sourceendlinenumber="659"><strong>JavaScript</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="660" sourceendlinenumber="711"><code class="lang-javascript">// Time is the primary key
var timeProperty = new SdsObjects.SdsTypeProperty({
    &quot;Id&quot;: &quot;Time&quot;,
    &quot;IsKey&quot;: true,
    &quot;SdsType&quot;: new SdsObjects.SdsType({
        &quot;Id&quot;: &quot;dateType&quot;,
        &quot;SdsTypeCode&quot;: SdsObjects.SdsTypeCodeMap.DateTime
    })
});

// State is not a pre-defined type. An SdsType must be defined to represent the enum
var stateTypePropertyOk = new SdsObjects.SdsTypeProperty({
    &quot;Id&quot;: &quot;Ok&quot;,
    &quot;Value&quot;: State.Ok
});
var stateTypePropertyWarning = new SdsObjects.SdsTypeProperty({
    &quot;Id&quot;: &quot;Warning&quot;,
    &quot;Value&quot;: State.Warning
});
var stateTypePropertyAlarm = new SdsObjects.SdsTypeProperty({
    &quot;Id&quot;: &quot;Alarm&quot;,
    &quot;Value&quot;: State.Alarm
});

var stateType = new SdsObjects.SdsType({
    &quot;Id&quot;: &quot;State&quot;,
    &quot;Name&quot;: &quot;State&quot;,
    &quot;SdsTypeCode&quot;: SdsObjects.SdsTypeCodeMap.Int32Enum,
    &quot;Properties&quot;: [stateTypePropertyOk, stateTypePropertyWarning,
        stateTypePropertyAlarm, stateTypePropertyRed]
});

// Measurement property is a simple non-indexed, pre-defined type
var measurementProperty = new SdsObjects.SdsTypeProperty({
    &quot;Id&quot;: &quot;Measurement&quot;,
    &quot;Name&quot;: &quot;Measurement&quot;,
    &quot;SdsType&quot;: new SdsObjects.SdsType({
        &quot;Id&quot;: &quot;doubleType&quot;,
        &quot;SdsTypeCode&quot;: SdsObjects.SdsTypeCodeMap.Double
    })
});

// Create the Simple SdsType
var simpleType = new SdsObjects.SdsType({
    &quot;Id&quot;: &quot;Simple&quot;,
    &quot;Name&quot;: &quot;Simple&quot;, 
    &quot;Description&quot;: &quot;This is a simple SDS type &quot;,
    &quot;SdsTypeCode&quot;: SdsObjects.SdsTypeCodeMap.Object,
    &quot;Properties&quot;: [timeProperty, stateProperty, measurementProperty]
});
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="713" sourceendlinenumber="713">Working with a derived class is easy. For the following derived class:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="715" sourceendlinenumber="723"><code class="lang-javascript">class Derived(Simple):
    @property
    def Observation(self):
        return self.__observation
    @Observation.setter
    def Observation(self, observation):
        self.__observation = observation
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="725" sourceendlinenumber="725">Extend the SdsType as follows:</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="727" sourceendlinenumber="727"><strong>Python</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="728" sourceendlinenumber="746"><code class="lang-python"># Observation property is a simple non-indexed, standard data type
observation = SdsTypeProperty()
observation.Id = &quot;Observation&quot;
observation.Name = &quot;Observation&quot;
observation.SdsType = SdsType()
observation.SdsType.Id = &quot;String&quot;
observation.SdsType.Name = &quot;String&quot;
observation.SdsType.SdsTypeCode = SdsTypeCode.String

# Create the Derived SdsType
derived = SdsType()
derived.Id = &quot;Derived&quot;
derived.Name = &quot;Derived&quot;
derived.Description = &quot;Derived sample type&quot;
derived.BaseType = simpleType # Set the base type to the derived type
derived.SdsTypeCode = SdsTypeCode.Object
derived.Properties = [ observation ]
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="748" sourceendlinenumber="748"><strong>JavaScript</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="749" sourceendlinenumber="766"><code class="lang-javascript">var observationProprety = new SdsObjects.SdsTypeProperty({
    &quot;Id&quot;: &quot;Observation&quot;,
    &quot;SdsType&quot;: new SdsObjects.SdsType({
        &quot;Id&quot;: &quot;strType&quot;,
        &quot;SdsTypeCode&quot;: SdsObjects.SdsTypeCodeMap.String
    })
});

var derivedType = new SdsObjects.SdsType({
    &quot;Id&quot;: &quot;Derived&quot;,
    &quot;Name&quot;: &quot;Derived&quot;,
    &quot;Description&quot;: &quot; Derived sample type&quot;,
    &quot;BaseType&quot;: simpleType,
    &quot;SdsTypeCode&quot;: SdsObjects.SdsTypeCodeMap.Object,
    &quot;Properties&quot;: [ observationProprety ]
});
</code></pre><h2 id="type-reusability" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="768" sourceendlinenumber="768">Type Reusability</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="770" sourceendlinenumber="770">An SdsType can also refer other SdsTypes by using their identifiers. This enables type re-usability.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="772" sourceendlinenumber="772">For example, if there is a common index and value property for a group of types that may have additional properties, a base type can be created with those properties.</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="774" sourceendlinenumber="797"><code class="lang-json">{
    &quot;Id&quot;: &quot;Simple&quot;,
    &quot;Name&quot;: &quot;Simple&quot;,
    &quot;SdsTypeCode&quot;: 1,
    &quot;Properties&quot;: [
        {
            &quot;Id&quot;: &quot;Time&quot;,
            &quot;Name&quot;: &quot;Time&quot;,
            &quot;IsKey&quot;: true,
            &quot;SdsType&quot;: {
                &quot;SdsTypeCode&quot;: 16
            }
        },
        {
            &quot;Id&quot;: &quot;Measurement&quot;,
            &quot;Name&quot;: &quot;Measurement&quot;,
            &quot;SdsType&quot;: {
                &quot;SdsTypeCode&quot;: 14
            }
        }
    ]
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="799" sourceendlinenumber="799">If a new type should be created with properties additional to the ones above, a reference to the base type can be added by simply specifying the base type&#39;s Id.</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="801" sourceendlinenumber="819"><code class="lang-json">{
    &quot;Id&quot;: &quot;Complex&quot;,
    &quot;Name&quot;: &quot;Complex&quot;,
    &quot;SdsTypeCode&quot;: 1,
    &quot;BaseType&quot;:{
        &quot;Id&quot;:&quot;Simple&quot;
    },
    &quot;Properties&quot;: [
        {
            &quot;Id&quot;: &quot;Depth&quot;,
            &quot;Name&quot;: &quot;Depth&quot;,
            &quot;SdsType&quot;: {
                &quot;SdsTypeCode&quot;: 14
            }
        }
    ]
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="821" sourceendlinenumber="821">The new type may also include the full type definition of the reference type instead of specifying only the Id. For example,</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="823" sourceendlinenumber="860"><code class="lang-json">{
    &quot;Id&quot;: &quot;Complex&quot;,
    &quot;Name&quot;: &quot;Complex&quot;,
    &quot;SdsTypeCode&quot;: 1,
    &quot;BaseType&quot;:{
        &quot;Id&quot;: &quot;Simple&quot;,
        &quot;Name&quot;: &quot;Simple&quot;,
        &quot;SdsTypeCode&quot;: 1,
        &quot;Properties&quot;: [
            {
                &quot;Id&quot;: &quot;Time&quot;,
                &quot;Name&quot;: &quot;Time&quot;,
                &quot;IsKey&quot;: true,
                &quot;SdsType&quot;: {
                    &quot;SdsTypeCode&quot;: 16
                }
            },
            {
                &quot;Id&quot;: &quot;Measurement&quot;,
                &quot;Name&quot;: &quot;Measurement&quot;,
                &quot;SdsType&quot;: {
                    &quot;SdsTypeCode&quot;: 14
                }
            }
        ]
    },
    &quot;Properties&quot;: [
        {
            &quot;Id&quot;: &quot;Depth&quot;,
            &quot;Name&quot;: &quot;Depth&quot;,
            &quot;SdsType&quot;: {
                &quot;SdsTypeCode&quot;: 14
            }
        }
    ]
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="862" sourceendlinenumber="862">If the full definition is sent, the referenced types (base type &quot;Simple&quot; in the above example) should match the actual type initially created, unless a type update is attempted. For type update behavior, see <a href="#create-or-update-type" data-raw-source="[Create Or Update Type](#create-or-update-type)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="862" sourceendlinenumber="862">Create Or Update Type</a>. If the full definition is sent and the referenced types did not exist, they will be created automatically by SDS. Further type creations can reference them as demostrated above. Note that when trying to get types back from SDS, the results will also include types that were automatically created by SDS.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="864" sourceendlinenumber="864">Base types and properties of type Object, Enum, user-defined collections, such as, Array, List and Dictionary will be treated as referenced types. Note that streams cannot be created using these referenced types. If a stream of particular type is to be created, the type should contain at least one property with a valid index type as described in this section, <a class="xref" href="indexes.html" data-raw-source="[Indexes](xref:sdsIndexes)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="864" sourceendlinenumber="864">Indexes</a>. The index property may also be in the base type as shown in the example above.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="866" sourceendlinenumber="866">This works seamlessly when using any programming language. For example if you are using .NET,</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="868" sourceendlinenumber="896"><code class="lang-csharp">
public class Basic
{
    [SdsMember(IsKey = true, Order = 0)]
    public DateTime Time { get; set; }

    public double Temperature { get; set; }
}

public class EngineMonitor : Basic
{
    public double PistonSpeed { get; set; }
}

public class WindShieldMonitor : Basic
{
    public double Luminance { get; set; }
}

SdsType engineType = SdsTypeBuilder.CreateSdsType&lt;EngineMonitor&gt;();
engineType.Id = &quot;Engine&quot;;
engineType.BaseType.Id = &quot;Basic&quot;;

SdsType windShieldType = SdsTypeBuilder.CreateSdsType&lt;WindShieldMonitor&gt;();
windShieldType.Id = &quot;WindShield&quot;;
windShieldType.BaseType.Id = &quot;Basic&quot;;
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="898" sourceendlinenumber="898">Note that the base type&#39;s Id can also be changed, if necessary, to be more meaningful.</p>
<h1 id="sdstype-api" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="900" sourceendlinenumber="900">SdsType API</h1>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="902" sourceendlinenumber="905">The REST APIs provide programmatic access to read and write SDS data. The APIs in this section 
interact with SdsTypes. When working in .NET, convenient SDS Client Libraries are available. 
The ISdsMetadataService interface, accessed using the <code>SdsService.GetMetadataService()</code> helper, 
defines the available functions. See <a href="#types" data-raw-source="[Types](#types)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="905" sourceendlinenumber="905">Types</a> for general SdsType information.</p>
<hr>
<h2 id="get-type" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="910" sourceendlinenumber="910"><code>Get Type</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="912" sourceendlinenumber="912">Returns the type corresponding to the specified typeId within a given namespace.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="914" sourceendlinenumber="914"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="915" sourceendlinenumber="917"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="920" sourceendlinenumber="920"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="922" sourceendlinenumber="923"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="925" sourceendlinenumber="926"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="928" sourceendlinenumber="929"><code>string typeId</code><br>The type identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="932" sourceendlinenumber="933"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="935" sourceendlinenumber="936"><strong>Response body</strong><br>The requested SdsType</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="938" sourceendlinenumber="938">Example response body:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="939" sourceendlinenumber="992"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

{
    &quot;Id&quot;: &quot;Simple&quot;,
    &quot;Name&quot;: &quot;Simple&quot;,
    &quot;SdsTypeCode&quot;: 1,
    &quot;Properties&quot;: [
        {
            &quot;Id&quot;: &quot;Time&quot;,
            &quot;Name&quot;: &quot;Time&quot;,
            &quot;IsKey&quot;: true,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;19a87a76-614a-385b-ba48-6f8b30ff6ab2&quot;,
                &quot;Name&quot;: &quot;DateTime&quot;,
                &quot;SdsTypeCode&quot;: 16
            }
        },
        {
            &quot;Id&quot;: &quot;State&quot;,
            &quot;Name&quot;: &quot;State&quot;,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;e20bdd7e-590b-3372-ab39-ff61950fb4f3&quot;,
                &quot;Name&quot;: &quot;State&quot;,
                &quot;SdsTypeCode&quot;: 609,
                &quot;Properties&quot;: [
                    {
                        &quot;Id&quot;: &quot;Ok&quot;,
                        &quot;Value&quot;: 0
                    },
                    {
                        &quot;Id&quot;: &quot;Warning&quot;,
                        &quot;Value&quot;: 1
                    },
                    {
                        &quot;Id&quot;: &quot;Alarm&quot;,
                        &quot;Value&quot;: 2
                    }
                ]
            }
        },
        {
            &quot;Id&quot;: &quot;Measurement&quot;,
            &quot;Name&quot;: &quot;Measurement&quot;,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;6fecef77-20b1-37ae-aa3b-e6bb838d5a86&quot;,
                &quot;Name&quot;: &quot;Double&quot;,
                &quot;SdsTypeCode&quot;: 14
            }
        }
    ]
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="994" sourceendlinenumber="994"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="995" sourceendlinenumber="997"><code class="lang-csharp">    Task&lt;SdsType&gt; GetTypeAsync(string typeId);
</code></pre><hr>
<h2 id="get-type-reference-count" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1001" sourceendlinenumber="1001"><code>Get Type Reference Count</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1003" sourceendlinenumber="1003">Returns a dictionary mapping the object name to the number of references held by streams, stream views and parent types for the specified type. See <a href="xref:sdsstreams" data-raw-source="[Streams](xref:sdsstreams)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1003" sourceendlinenumber="1003">Streams</a> and <a class="xref" href="SDS_Views.html" data-raw-source="[Steam Views](xref:sdsStreamViews)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1003" sourceendlinenumber="1003">Steam Views</a> for more information on the use of types to define streams and stream views. For further details about type referencing please see: <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1003" sourceendlinenumber="1003">Type Reusability</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1005" sourceendlinenumber="1005"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1006" sourceendlinenumber="1008"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}/ReferenceCount
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1010" sourceendlinenumber="1010"><strong>Parameters</strong>  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1012" sourceendlinenumber="1013"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1015" sourceendlinenumber="1016"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1018" sourceendlinenumber="1019"><code>string typeId</code><br>The type identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1021" sourceendlinenumber="1022"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1024" sourceendlinenumber="1025"><strong>Response body</strong><br>A dictionary mapping object name to number of references.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1027" sourceendlinenumber="1027">Example response body:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1028" sourceendlinenumber="1034"><code class="lang-json">    {
        &quot;SdsStream&quot;: 3,
        &quot;SdsStreamView&quot;: 2,
        &quot;SdsType&quot;: 1
    }
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1036" sourceendlinenumber="1036"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1037" sourceendlinenumber="1039"><code class="lang-csharp">    Task&lt;IDictionary&lt;string, int&gt;&gt; GetTypeReferenceCountAsync(string typeId);
</code></pre><hr>
<h2 id="get-types" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1043" sourceendlinenumber="1043"><code>Get Types</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1045" sourceendlinenumber="1045">Returns a list of types within a given namespace.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1047" sourceendlinenumber="1051">If specifying the optional search parameter or optional filter parameter, the list of types returned are filtered to match 
the search/filter criteria. If neither parameter is specified, the list includes all types 
in the Namespace. See <a class="xref" href="Searching.html" data-raw-source="[Searching](xref:sdsSearching)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1049" sourceendlinenumber="1049">Searching</a> 
and <a class="xref" href="Filter_Expressions_Metadata.html" data-raw-source="[Filter Expressions: SDS Objects](xref:sdsFilterExpressionsObjects)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1050" sourceendlinenumber="1050">Filter Expressions: SDS Objects</a> 
for information about specifying those respective parameters.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1053" sourceendlinenumber="1053">Note that the results will also include types that were automatically created by SDS as a result of type referencing. For further details about type referencing please see: <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1053" sourceendlinenumber="1053">Type Reusability</a></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1055" sourceendlinenumber="1055"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1056" sourceendlinenumber="1058"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types?query={query}&amp;filter={filter}&amp;skip={skip}&amp;count={count}&amp;orderby={orderby}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1060" sourceendlinenumber="1060"><strong>Parameters</strong>  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1062" sourceendlinenumber="1063"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1065" sourceendlinenumber="1066"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1068" sourceendlinenumber="1069"><code>string query</code><br>An optional query string to match which SdsTypes will be returned.  See the <a class="xref" href="Searching.html" data-raw-source="[Searching](xref:sdsSearching)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1069" sourceendlinenumber="1069">Searching</a> topic for information about specifying the query parameter.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1071" sourceendlinenumber="1073"><code>string filter</code><br>An optional filter string to match which SdsTypes will be returned.  See the <a class="xref" href="Filter_Expressions_Metadata.html" data-raw-source="[Filter Expressions: SDS Objects](xref:sdsFilterExpressionsObjects)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1072" sourceendlinenumber="1072">Filter Expressions: SDS Objects</a> 
topic for information about specifying the filter parameter.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1075" sourceendlinenumber="1077"><code>int skip</code><br>An optional value representing the zero-based offset of the first SdsType to retrieve. If not specified, 
a default value of 0 is used.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1079" sourceendlinenumber="1080"><code>int count</code><br>An optional value representing the maximum number of SdsTypes to retrieve. If not specified, a default value of 100 is used.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1082" sourceendlinenumber="1085"><code>string orderby</code><br>An optional parameter representing sorted order which SdsTypes will be returned. A field name is required. The sorting is based on the stored values for the given field (of type string). For example, <code>orderby=name</code> would sort the returned results by the <code>name</code> values (ascending by default). 
Additionally, a value can be provided along with the field name to identify whether to sort ascending or descending, by using values <code>asc</code> or <code>desc</code>, respectively. For example, <code>orderby=name desc</code> would sort the returned results by the <code>name</code> values, descending.
If no value is specified, there is no sorting of results.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1087" sourceendlinenumber="1088"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1090" sourceendlinenumber="1091"><strong>Response body</strong><br>A collection of zero or more SdsTypes</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1093" sourceendlinenumber="1093">Example response body:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1094" sourceendlinenumber="1150"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

[    
    {
        &quot;Id&quot;: &quot;Simple&quot;,
        &quot;Name&quot;: &quot;Simple&quot;,
        &quot;SdsTypeCode&quot;: 1,
        &quot;Properties&quot;: [
            {
                &quot;Id&quot;: &quot;Time&quot;,
                &quot;Name&quot;: &quot;Time&quot;,
                &quot;IsKey&quot;: true,
                &quot;SdsType&quot;: {
                    &quot;Id&quot;: &quot;19a87a76-614a-385b-ba48-6f8b30ff6ab2&quot;,
                    &quot;Name&quot;: &quot;DateTime&quot;,
                    &quot;SdsTypeCode&quot;: 16
                }
            },
            {
                &quot;Id&quot;: &quot;State&quot;,
                &quot;Name&quot;: &quot;State&quot;,
                &quot;SdsType&quot;: {
                    &quot;Id&quot;: &quot;e20bdd7e-590b-3372-ab39-ff61950fb4f3&quot;,
                    &quot;Name&quot;: &quot;State&quot;,
                    &quot;SdsTypeCode&quot;: 609,
                    &quot;Properties&quot;: [
                        {
                            &quot;Id&quot;: &quot;Ok&quot;,
                            &quot;Value&quot;: 0
                        },
                        {
                            &quot;Id&quot;: &quot;Warning&quot;,
                            &quot;Value&quot;: 1
                        },
                        {
                            &quot;Id&quot;: &quot;Alarm&quot;,
                            &quot;Value&quot;: 2
                        }
                    ]
                }
            },
            {
                &quot;Id&quot;: &quot;Measurement&quot;,
                &quot;Name&quot;: &quot;Measurement&quot;,
                &quot;SdsType&quot;: {
                    &quot;Id&quot;: &quot;6fecef77-20b1-37ae-aa3b-e6bb838d5a86&quot;,
                    &quot;Name&quot;: &quot;Double&quot;,
                    &quot;SdsTypeCode&quot;: 14
                }
            }
        ]
    },
    …
]
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1153" sourceendlinenumber="1153"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1154" sourceendlinenumber="1156"><code class="lang-csharp">    Task&lt;IEnumerable&lt;SdsType&gt;&gt; GetTypesAsync(string query = &quot;&quot;, int skip = 0, int count = 100);
</code></pre><hr>
<h2 id="get-or-create-type" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1160" sourceendlinenumber="1160"><code>Get or Create Type</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1162" sourceendlinenumber="1163">Creates the specified type. If a type with a matching identifier already exists, SDS compares the 
existing type with the type that was sent.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1165" sourceendlinenumber="1166">If the types are identical, a <code>Found</code> (302) error 
is returned with the Location header set to the URI where the type may be retrieved using a Get function. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1168" sourceendlinenumber="1169">If the types do not match, a <code>Conflict</code> (409) error is returned.
Note that a <code>Conflict</code> (409) error will also be returned if the type contains reference to any existing type, but the referenced type definition in the body does not match the existing type. You may reference an existing type without including the reference type definition in the body by using only the Ids. For further details about type referencing please see: <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1169" sourceendlinenumber="1169">Type Reusability</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1171" sourceendlinenumber="1173">For a matching type (<code>Found</code>), clients that are capable of performing a redirect that includes the 
authorization header can automatically redirect to retrieve the type. However, most clients, 
including the .NET HttpClient, consider redirecting with the authorization token to be a security vulnerability.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1175" sourceendlinenumber="1177">When a client performs a redirect and strips the authorization header, SDS cannot authorize the request and 
returns <code>Unauthorized</code> (401). For this reason, it is recommended that when using clients that do not 
redirect with the authorization header, you should disable automatic redirect and perform the redirect manually.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1179" sourceendlinenumber="1179"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1180" sourceendlinenumber="1182"><code class="lang-text">   POST api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1184" sourceendlinenumber="1184"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1186" sourceendlinenumber="1187"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1189" sourceendlinenumber="1190"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1192" sourceendlinenumber="1193"><code>string typeId</code><br>The type identifier. The identifier must match the <code>SdsType.Id</code> field in the request body. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1195" sourceendlinenumber="1196"><strong>Request body</strong><br>The request content is the serialized SdsType.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1198" sourceendlinenumber="1198">Example SdsType content:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1199" sourceendlinenumber="1249"><code class="lang-json">{
    &quot;Id&quot;: &quot;Simple&quot;,
    &quot;Name&quot;: &quot;Simple&quot;,
    &quot;SdsTypeCode&quot;: 1,
    &quot;Properties&quot;: [
        {
            &quot;Id&quot;: &quot;Time&quot;,
            &quot;Name&quot;: &quot;Time&quot;,
            &quot;IsKey&quot;: true,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;19a87a76-614a-385b-ba48-6f8b30ff6ab2&quot;,
                &quot;Name&quot;: &quot;DateTime&quot;,
                &quot;SdsTypeCode&quot;: 16
            }
        },
        {
            &quot;Id&quot;: &quot;State&quot;,
            &quot;Name&quot;: &quot;State&quot;,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;e20bdd7e-590b-3372-ab39-ff61950fb4f3&quot;,
                &quot;Name&quot;: &quot;State&quot;,
                &quot;SdsTypeCode&quot;: 609,
                &quot;Properties&quot;: [
                    {
                        &quot;Id&quot;: &quot;Ok&quot;,
                        &quot;Value&quot;: 0
                    },
                    {
                        &quot;Id&quot;: &quot;Warning&quot;,
                        &quot;Value&quot;: 1
                    },
                    {
                        &quot;Id&quot;: &quot;Alarm&quot;,
                        &quot;Value&quot;: 2
                    }
                ]
            }
        },
        {
            &quot;Id&quot;: &quot;Measurement&quot;,
            &quot;Name&quot;: &quot;Measurement&quot;,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;6fecef77-20b1-37ae-aa3b-e6bb838d5a86&quot;,
                &quot;Name&quot;: &quot;Double&quot;,
                &quot;SdsTypeCode&quot;: 14
            }
        }
    ]
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1251" sourceendlinenumber="1252"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1254" sourceendlinenumber="1255"><strong>Response body</strong><br>The request content is the serialized SdsType. If you are not using the SDS Client Libraries, it is recommended that you use JSON.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1257" sourceendlinenumber="1257">Example Response body:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1258" sourceendlinenumber="1389"><code class="lang-json">HTTP/1.1 201
Content-Type: application/json

{
    &quot;Id&quot;: &quot;Simple&quot;,
    &quot;Name&quot;: &quot;Simple&quot;,
    &quot;Description&quot;: null,
    &quot;SdsTypeCode&quot;: 1,
    &quot;IsGenericType&quot;: false,
    &quot;IsReferenceType&quot;: false,
    &quot;GenericArguments&quot;: null,
    &quot;Properties&quot;: [
        {
            &quot;Id&quot;: &quot;Time&quot;,
            &quot;Name&quot;: &quot;Time&quot;,
            &quot;Description&quot;: null,
            &quot;Order&quot;: 0,
            &quot;IsKey&quot;: true,
            &quot;FixedSize&quot;: 0,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;19a87a76-614a-385b-ba48-6f8b30ff6ab2&quot;,
                &quot;Name&quot;: &quot;DateTime&quot;,
                &quot;Description&quot;: null,
                &quot;SdsTypeCode&quot;: 16,
                &quot;IsGenericType&quot;: false,
                &quot;IsReferenceType&quot;: false,
                &quot;GenericArguments&quot;: null,
                &quot;Properties&quot;: null,
                &quot;BaseType&quot;: null,
                &quot;DerivedTypes&quot;: null,
                &quot;InterpolationMode&quot;: 0,
                &quot;ExtrapolationMode&quot;: 0
            },
            &quot;Value&quot;: null,
            &quot;Uom&quot;: null,
            &quot;InterpolationMode&quot;: null
        },
        {
            &quot;Id&quot;: &quot;State&quot;,
            &quot;Name&quot;: &quot;State&quot;,
            &quot;Description&quot;: null,
            &quot;Order&quot;: 0,
            &quot;IsKey&quot;: false,
            &quot;FixedSize&quot;: 0,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;e20bdd7e-590b-3372-ab39-ff61950fb4f3&quot;,
                &quot;Name&quot;: &quot;State&quot;,
                &quot;Description&quot;: null,
                &quot;SdsTypeCode&quot;: 609,
                &quot;IsGenericType&quot;: false,
                &quot;IsReferenceType&quot;: false,
                &quot;GenericArguments&quot;: null,
                &quot;Properties&quot;: [
                    {
                        &quot;Id&quot;: &quot;Ok&quot;,
                        &quot;Name&quot;: null,
                        &quot;Description&quot;: null,
                        &quot;Order&quot;: 0,
                        &quot;IsKey&quot;: false,
                        &quot;FixedSize&quot;: 0,
                        &quot;SdsType&quot;: null,
                        &quot;Value&quot;: 0,
                        &quot;Uom&quot;: null,
                        &quot;InterpolationMode&quot;: null
                    },
                    {
                        &quot;Id&quot;: &quot;Warning&quot;,
                        &quot;Name&quot;: null,
                        &quot;Description&quot;: null,
                        &quot;Order&quot;: 0,
                        &quot;IsKey&quot;: false,
                        &quot;FixedSize&quot;: 0,
                        &quot;SdsType&quot;: null,
                        &quot;Value&quot;: 1,
                        &quot;Uom&quot;: null,
                        &quot;InterpolationMode&quot;: null
                    },
                    {
                        &quot;Id&quot;: &quot;Alarm&quot;,
                        &quot;Name&quot;: null,
                        &quot;Description&quot;: null,
                        &quot;Order&quot;: 0,
                        &quot;IsKey&quot;: false,
                        &quot;FixedSize&quot;: 0,
                        &quot;SdsType&quot;: null,
                        &quot;Value&quot;: 2,
                        &quot;Uom&quot;: null,
                        &quot;InterpolationMode&quot;: null
                    }
                ],
                &quot;BaseType&quot;: null,
                &quot;DerivedTypes&quot;: null,
                &quot;InterpolationMode&quot;: 0,
                &quot;ExtrapolationMode&quot;: 0
            },
            &quot;Value&quot;: null,
            &quot;Uom&quot;: null,
            &quot;InterpolationMode&quot;: null
        },
        {
            &quot;Id&quot;: &quot;Measurement&quot;,
            &quot;Name&quot;: &quot;Measurement&quot;,
            &quot;Description&quot;: null,
            &quot;Order&quot;: 0,
            &quot;IsKey&quot;: false,
            &quot;FixedSize&quot;: 0,
            &quot;SdsType&quot;: {
                &quot;Id&quot;: &quot;6fecef77-20b1-37ae-aa3b-e6bb838d5a86&quot;,
                &quot;Name&quot;: &quot;Double&quot;,
                &quot;Description&quot;: null,
                &quot;SdsTypeCode&quot;: 14,
                &quot;IsGenericType&quot;: false,
                &quot;IsReferenceType&quot;: false,
                &quot;GenericArguments&quot;: null,
                &quot;Properties&quot;: null,
                &quot;BaseType&quot;: null,
                &quot;DerivedTypes&quot;: null,
                &quot;InterpolationMode&quot;: 0,
                &quot;ExtrapolationMode&quot;: 0
            },
            &quot;Value&quot;: null,
            &quot;Uom&quot;: null,
            &quot;InterpolationMode&quot;: null
        }
    ],
    &quot;BaseType&quot;: null,
    &quot;DerivedTypes&quot;: null,
    &quot;InterpolationMode&quot;: 0,
    &quot;ExtrapolationMode&quot;: 0
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1391" sourceendlinenumber="1391"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1392" sourceendlinenumber="1394"><code class="lang-csharp">    Task&lt;SdsType&gt; GetOrCreateTypeAsync(SdsType sdsType)
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1396" sourceendlinenumber="1398">If a type with a matching identifier already exists and it matches the type in the request body, 
the client redirects a GET to the Location header. If the existing type does not match the type
in the request body, a Conflict error response is returned and the client library method throws an exception. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1400" sourceendlinenumber="1400">The .NET SDS Client Libraries manage redirects.</p>
<hr>
<h2 id="create-or-update-type" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1404" sourceendlinenumber="1404"><code>Create or Update Type</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1406" sourceendlinenumber="1406">Creates the specified type. If a type with the same Id already exists, the definition of the type is updated.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1408" sourceendlinenumber="1409">Note that a type cannot be updated if any streams or stream views or other types are 
associated with it. This will also be true for any reference types that it includes. For further details about type referencing please see: <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1409" sourceendlinenumber="1409">Type Reusability</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1411" sourceendlinenumber="1412">Also, certain parameters, including the type id, cannot be changed after 
they are defined.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1414" sourceendlinenumber="1414"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1415" sourceendlinenumber="1417"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1419" sourceendlinenumber="1419"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1421" sourceendlinenumber="1422"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1424" sourceendlinenumber="1425"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1427" sourceendlinenumber="1428"><code>string typeId</code><br>The type identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1430" sourceendlinenumber="1431"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1433" sourceendlinenumber="1434"><strong>Response body</strong><br>The content is set to true on success.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1436" sourceendlinenumber="1436"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1437" sourceendlinenumber="1439"><code class="lang-csharp">    Task CreateOrUpdateTypeAsync(SdsType SdsType)
</code></pre><hr>
<h2 id="delete-type" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1443" sourceendlinenumber="1443"><code>Delete Type</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1445" sourceendlinenumber="1445">Deletes a type from the specified tenant and namespace. Note that a type cannot be deleted if any streams or stream views or other types reference it.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1447" sourceendlinenumber="1447"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1448" sourceendlinenumber="1450"><code class="lang-text">   DELETE api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1452" sourceendlinenumber="1452"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1454" sourceendlinenumber="1455"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1457" sourceendlinenumber="1458"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1460" sourceendlinenumber="1461"><code>string typeId</code><br>The type identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1463" sourceendlinenumber="1464"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1466" sourceendlinenumber="1466"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1467" sourceendlinenumber="1469"><code class="lang-csharp">    Task DeleteTypeAsync(string typeId);
</code></pre><hr>
<h2 id="get-types-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1473" sourceendlinenumber="1473"><code>Get Types Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1475" sourceendlinenumber="1475">Get the default ACL for the Types collection. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1475" sourceendlinenumber="1475">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1477" sourceendlinenumber="1477"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1478" sourceendlinenumber="1480"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1482" sourceendlinenumber="1482"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1484" sourceendlinenumber="1485"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1487" sourceendlinenumber="1488"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1490" sourceendlinenumber="1491"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1493" sourceendlinenumber="1494"><strong>Response body</strong><br>The default ACL for Types</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1496" sourceendlinenumber="1496"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1497" sourceendlinenumber="1499"><code class="lang-csharp">   Task&lt;AccessControlList&gt; GetTypesAccessControlListAsync();
</code></pre><hr>
<h2 id="update-types-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1502" sourceendlinenumber="1502"><code>Update Types Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1504" sourceendlinenumber="1504">Update the default ACL for the Types collection. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1504" sourceendlinenumber="1504">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1506" sourceendlinenumber="1506"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1507" sourceendlinenumber="1509"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1511" sourceendlinenumber="1511"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1513" sourceendlinenumber="1514"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1516" sourceendlinenumber="1517"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1519" sourceendlinenumber="1520"><strong>Request body</strong><br>Serialized ACL</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1522" sourceendlinenumber="1523"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1525" sourceendlinenumber="1525"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1526" sourceendlinenumber="1528"><code class="lang-csharp">   Task UpdateTypesAccessControlListAsync(AccessControlList typesAcl);
</code></pre><hr>
<h2 id="get-type-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1532" sourceendlinenumber="1532"><code>Get Type Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1534" sourceendlinenumber="1534">Get the ACL of the specified type. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1534" sourceendlinenumber="1534">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1536" sourceendlinenumber="1536"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1537" sourceendlinenumber="1539"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1541" sourceendlinenumber="1541"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1543" sourceendlinenumber="1544"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1546" sourceendlinenumber="1547"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1549" sourceendlinenumber="1550"><code>string typeId</code><br>The type identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1552" sourceendlinenumber="1553"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1555" sourceendlinenumber="1556"><strong>Response Body</strong><br>The ACL for the specified type</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1558" sourceendlinenumber="1558"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1559" sourceendlinenumber="1561"><code class="lang-csharp">   Task&lt;AccessControlList&gt; GetTypeAccessControlListAsync(string typeId);
</code></pre><hr>
<h2 id="update-type-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1564" sourceendlinenumber="1564"><code>Update Type Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1566" sourceendlinenumber="1566">Update the ACL of the specified type. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1566" sourceendlinenumber="1566">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1568" sourceendlinenumber="1568">Note that this does not update the ACL for the associated types. For further details about type referencing please see: <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1568" sourceendlinenumber="1568">Type Reusability</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1570" sourceendlinenumber="1570"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1571" sourceendlinenumber="1573"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1575" sourceendlinenumber="1575"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1577" sourceendlinenumber="1578"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1580" sourceendlinenumber="1581"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1583" sourceendlinenumber="1584"><code>string typeId</code><br>The type identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1586" sourceendlinenumber="1587"><strong>Request body</strong><br>Serialized ACL</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1589" sourceendlinenumber="1590"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1592" sourceendlinenumber="1592"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1593" sourceendlinenumber="1595"><code class="lang-csharp">   Task UpdateTypeAccessControlListAsync(string typeId, AccessControlList typeAcl);
</code></pre><hr>
<h2 id="get-type-owner" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1598" sourceendlinenumber="1598"><code>Get Type Owner</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1600" sourceendlinenumber="1600">Get the Owner of the specified type. For more information on Owners, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1600" sourceendlinenumber="1600">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1602" sourceendlinenumber="1602"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1603" sourceendlinenumber="1605"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}/Owner
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1607" sourceendlinenumber="1607"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1609" sourceendlinenumber="1610"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1612" sourceendlinenumber="1613"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1615" sourceendlinenumber="1616"><code>string typeId</code><br>The type identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1618" sourceendlinenumber="1619"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1621" sourceendlinenumber="1622"><strong>Response Body</strong><br>The Owner for the specified type </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1624" sourceendlinenumber="1624"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1625" sourceendlinenumber="1627"><code class="lang-csharp">   Task&lt;Trustee&gt; GetTypeOwnerAsync(string typeId);
</code></pre><hr>
<h2 id="update-type-owner" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1630" sourceendlinenumber="1630"><code>Update Type Owner</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1632" sourceendlinenumber="1632">Update the Owner of the specified type. For more information on Owners, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1632" sourceendlinenumber="1632">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1634" sourceendlinenumber="1634">Note that this does not update the Owner for the associated types. For further details about type referencing please see: <a href="#type-reusability" data-raw-source="[Type Reusability](#type-reusability)" sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1634" sourceendlinenumber="1634">Type Reusability</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1636" sourceendlinenumber="1636"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1637" sourceendlinenumber="1639"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Types/{typeId}/Owner
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1641" sourceendlinenumber="1641"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1643" sourceendlinenumber="1644"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1646" sourceendlinenumber="1647"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1649" sourceendlinenumber="1650"><code>string typeId</code><br>The type identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1652" sourceendlinenumber="1653"><strong>Request body</strong><br>Serialized Owner</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1655" sourceendlinenumber="1656"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1658" sourceendlinenumber="1658"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Types.md" sourcestartlinenumber="1659" sourceendlinenumber="1661"><code class="lang-csharp">   Task UpdateTypeOwnerAsync(string typeId, Trustee typeOwner);
</code></pre></article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/OCS-Docs/blob/master/Documentation/SequentialDataStore/SDS_Types.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
            <span id='copyright-text'>© 2019 - OSIsoft, LLC.<span>
        </span></span></div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>
