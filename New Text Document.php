public function attrProduct($products)
{
    // product info varidation
    $variation1 = array();
    $variation2 = array();
    $variation3 = array();

    //attribute info
    $attrGroup = array();
    $attrGroupColumns = array();
    $attrGroupNameTest = array();
    $attribute = array();
    $attributeColumns= array();
    $attributeNameTest = array();
    $attrValue = array();
    $attrCount = 0;

    foreach ($products as $pro) {
        $variation1[$pro['id']] = $pro["variation1"];
        $variation2[$pro['id']] = $pro["variation2"];
        $variation3[$pro['id']] = $pro["variation3"];
    }
    $commonVar = [$variation1, $variation2, $variation3];

    //attribute group
    $countAttrGroup = 0;
    $countAttr = 1;
    foreach ( $commonVar as $commonVars){
        foreach ($commonVars as $commonVars2){
            if(!empty($commonVars2)){
                $variationArray[] = explode("|", $commonVars2);
                foreach ($variationArray as $variationArrays){
                    $attributeSet[] = $variationArrays;
                    if (!in_array($variationArrays[0], $attrGroupNameTest)){
                        ++$countAttrGroup;
                        $attrGroupColumns["attributeGroup_id"] = $countAttrGroup;
                        $attrGroupColumns["attributeGroup_name"] = $variationArrays[0];
                        $attrGroupNameTest[] = $variationArrays[0];  // for filter "if"
                    }
                }
            if(!empty($attrGroupColumns)){
                $attrGroup[] = $attrGroupColumns;
                unset($attrGroupColumns);
            }
            }
        }
    }

    // atribute
    $attributeGroup_id=0;
    foreach ($attributeSet as $attributeSets){
        foreach ($attributeSets as $attributeSets2){
            foreach ($attrGroup as $attrGroups){
                $attrGroupsId[] = $attrGroups['attributeGroup_id'];
                $attrGroupsName[] = $attrGroups['attributeGroup_name'];
            }
            if(in_array($attributeSets2,$attrGroupsName)){
            $attributeGroup_id = $attrGroupsId[array_search($attributeSets2,$attrGroupsName )];
            }
            else{
            $attributeName="";
            ///for attribute
            for ($i = 0; $i
            <strlen($attributeSets2); $i++){
            if($attributeSets2[$i] == ":"){
            break;
        }
        $attributeName .=$attributeSets2[$i];
    }
        if(!in_array($attributeName,$attributeNameTest)){
        $attributeColumns["attribute_id"] = $countAttr;
        $attributeColumns['attributeGroup_id'] = $attributeGroup_id;
        $attributeColumns["attribute_name"] = $attributeName;
        $attributeNameTest[]= $attributeName; // for filter " this if"
        $attributeIdTest[]= $countAttr;
        ++$countAttr;
            if(!empty($attributeColumns)){
            $attribute[] = $attributeColumns;
            unset($attributeColumns);
            }
        }
        }
        }
    }

    // attribute value & product id
    $overPrice = array();
    $overPriceValue = array();
    $attrGroupId = "";
    $count2 = 0;
    foreach ( $commonVar as $commonVars){
        foreach ($commonVars as $key => $value){
            if(count(explode("|",$value)) > 1){
                foreach (explode("|",$value) as $commonVars2s){
                    if(count(explode( ":" , $commonVars2s)) == 1 ){
                    $attrGroupId = $attrGroupsId[array_search(explode(":", $commonVars2s)[0],$attrGroupsName )];
                    }
                    else if(count(explode(":", $commonVars2s)) == 2){
                    ++$count2;
                    $overPriceValue[explode(":", $commonVars2s)[0]] =  explode(":", $commonVars2s)[1];
                    $overPrice['overPrice_id']= $count2;
                    $overPrice['product_id'] = $key;
                    $overPrice['attributeGroup_id'] = $attrGroupId;
                    $overPrice['attribute_id'] = $attributeIdTest[ array_search(explode(":", $commonVars2s)[0],$attributeNameTest)];
                    $overPrice['overPrice'] = explode(":", $commonVars2s)[1];
                    }
                    if(!empty($overPrice)){
                    $attrValue[]= $overPrice;
                    unset($overPrice);
                    }
                }
            }
        }
    }

    //attribute combination>  product
    $attrcombinationProduct = array();
    $id_product_attribute = 0;
    $attrcombinationProductTest = array();

    //        combination
    $attrcombination = array();
    $attrcombinationTest = array();
    foreach ($attrValue as $attrValue1){
        foreach ($attrValue as $attrValue2){
            if($attrValue1['product_id'] == $attrValue2['product_id'] && $attrValue1['attributeGroup_id'] < $attrValue2['attributeGroup_id'] ){
                ++ $id_product_attribute;
                $attrcombinationProductTest['id_product_attribute']= $id_product_attribute;
                $attrcombinationProductTest['product_id']= $attrValue1['product_id'];
                $attrcombinationProductTest['attribute_id_1']= $attrValue1['attribute_id'];
                $attrcombinationProductTest['attribute_id_2']= $attrValue2['attribute_id'];
                $attrcombinationProductTest['price']= floatval($attrValue1['overPrice']) + floatval($attrValue2['overPrice']);
                $attrcombinationProductTest['quantity']= '50';

                //                    combination
                $countCombination = 0;
                while ($countCombination<2){
                $attrcombinationTest['id_product_attribute'] =$id_product_attribute;
                    if($countCombination==0)
                    {
                        $attrcombinationTest['attribute_id']= $attrValue1['attribute_id'];
                    }
                    else{
                        $attrcombinationTest['attribute_id']= $attrValue2['attribute_id'];
                    }
                    ++ $countCombination;
                    $attrcombination[]= $attrcombinationTest;
                    unset($attrcombinationTest);
                }

                $attrcombinationProduct[] = $attrcombinationProductTest;
                unset($attrcombinationProductTest);
            }
        }
    }

    $commonAttr =array();
    $commonAttr['attributeGroup']= $attrGroup;
    $commonAttr['attribute']= $attribute;
    $commonAttr['attributeValue']= $attrValue;
    $commonAttr['combinationProduct']= $attrcombinationProduct;
    $commonAttr['combination']= $attrcombination;
    return $commonAttr;
}