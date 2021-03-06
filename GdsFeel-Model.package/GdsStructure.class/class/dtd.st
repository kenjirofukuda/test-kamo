accessing
dtd
	^'
<!DOCTYPE structure [
<!ELEMENT structure (element*)>
<!ELEMENT element (vertices,ashape*)>
<!ELEMENT ashape EMPTY>
<!ELEMENT vertices (xy+)>
<!ELEMENT xy (#PCDATA)>  
<!-- {xy}34.5 27.8{/xy} separator character is one space between x to y --> 

<!ATTLIST structure name CDATA #REQUIRED>
<!ATTLIST structure created CDATA #REQUIRED>  <!-- iso8601 -->
<!ATTLIST structure modified CDATA #REQUIRED> <!-- iso8601 -->

<!ATTLIST element type CDATA #REQUIRED>       <!-- boundary path boxtext sref aref -->
<!ATTLIST element keyNumber CDATA #REQUIRED>  <!-- uniq integer value in structure. v > 0 -->
<!ATTLIST element dataType CDATA #IMPLIED>    <!-- integer value -->
<!ATTLIST element layerNumber CDATA #IMPLIED> <!-- 0 .. 63 if strict GDSII -->
<!ATTLIST element width CDATA #IMPLIED>       <!-- foat value -->

<!ATTLIST element sname CDATA #IMPLIED>
<!ATTLIST element angle CDATA #IMPLIED>       <!-- 0.0 .. 360.0 -->
<!ATTLIST element mag CDATA #IMPLIED>
<!ATTLIST element reflected CDATA #IMPLIED>

<!ATTLIST ashape rows CDATA #IMPLIED>
<!ATTLIST ashape cols CDATA #IMPLIED>
<!ATTLIST ashape row-spacing CDATA #IMPLIED>
<!ATTLIST ashape column-spacing CDATA #IMPLIED>
]>'