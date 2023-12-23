#!/bin/env python3

data="CRnCaCaCaSiRnBPTiMgArSiRnSiRnMgArSiRnCaFArTiTiBSiThFYCaFArCaCaSiThCaPBSiThSiThCaCaPTiRnPBSiThRnFArArCaCaSiThCaSiThSiRnMgArCaPTiBPRnFArSiThCaSiRnFArBCaSiRnCaPRnFArPMgYCaFArCaPTiTiTiBPBSiThCaPTiBPBSiRnFArBPBSiRnCaFArBPRnSiRnFArRnSiRnBFArCaFArCaCaCaSiThSiThCaCaPBPTiTiRnFArCaPTiBSiAlArPBCaCaCaCaCaSiRnMgArCaSiThFArThCaSiThCaSiRnCaFYCaSiRnFYFArFArCaSiRnFYFArCaSiRnBPMgArSiThPRnFArCaSiRnFArTiRnSiRnFYFArCaSiRnBFArCaSiRnTiMgArSiThCaSiThCaFArPRnFArSiRnFArTiTiTiTiBCaCaSiRnCaCaFYFArSiThCaPTiBPTiBCaSiThSiRnMgArCaF"

def replace_chars(s, index, num_chars_to_replace, replacement):
    # Ensure the index is within the string
    if index >= len(s):
       return s
    # Ensure we do not exceed the string length
    end_index = min(index + num_chars_to_replace, len(s))
    # Reconstruct the string
    return s[:index] + replacement + s[end_index:]


results={}

replacements = (
    ("Al", "ThF"),
    ("Al", "ThRnFAr"),
    ("B", "BCa"),
    ("B", "TiB"),
    ("B", "TiRnFAr"),
    ("Ca", "CaCa"),
    ("Ca", "PB"),
    ("Ca", "PRnFAr"),
    ("Ca", "SiRnFYFAr"),
    ("Ca", "SiRnMgAr"),
    ("Ca", "SiTh"),
    ("F", "CaF"),
    ("F", "PMg"),
    ("F", "SiAl"),
    ("H", "CRnAlAr"),
    ("H", "CRnFYFYFAr"),
    ("H", "CRnFYMgAr"),
    ("H", "CRnMgYFAr"),
    ("H", "HCa"),
    ("H", "NRnFYFAr"),
    ("H", "NRnMgAr"),
    ("H", "NTh"),
    ("H", "OB"),
    ("H", "ORnFAr"),
    ("Mg", "BF"),
    ("Mg", "TiMg"),
    ("N", "CRnFAr"),
    ("N", "HSi"),
    ("O", "CRnFYFAr"),
    ("O", "CRnMgAr"),
    ("O", "HP"),
    ("O", "NRnFAr"),
    ("O", "OTi"),
    ("P", "CaP"),
    ("P", "PTi"),
    ("P", "SiRnFAr"),
    ("Si", "CaSi"),
    ("Th", "ThCa"),
    ("Ti", "BP"),
    ("Ti", "TiTi"),
    ("e", "HF"),
    ("e", "NAl"),
    ("e", "OMg")
)

for pair in replacements:
    indexes = [i for i in range(len(data)) if data.startswith(pair[0], i)]
    for i in indexes:
        original_string = data
        index_to_change = i
        num_chars_to_replace = len(pair[0])
        replacement_string = pair[1]
        modified_string = replace_chars(original_string, index_to_change, num_chars_to_replace, replacement_string)
        results[modified_string]=1
        
        
# The correct answer is 535.
print(len(results))


