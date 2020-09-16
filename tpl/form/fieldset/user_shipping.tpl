[{if $oxcmp_user}]
    [{assign var="delivadr" value=$oxcmp_user->getSelectedAddress()}]
[{/if}]

[{if !$deladr}]
    [{assign var="oConfig" value=$oView->getConfig()}]
    [{assign var="deladr"  value=$oConfig->getRequestParameter('deladr')}]
[{/if}]

[{if $oxcmp_user}]
    [{assign var="aUserAddresses" value=$oxcmp_user->getUserAddresses()}]

    [{if $aUserAddresses|@count > 0}]
        [{if $onChangeClass == 'user'}]
            <div class="col-lg-9 offset-lg-3">
        [{/if}]

            <input type="hidden" name="changeClass" value="[{$onChangeClass|default:'account_user'}]">

            [{oxscript include="js/widgets/oxusershipingaddressselect.min.js" priority=10}]
            [{oxscript include="js/widgets/oxequalizer.min.js" priority=10}]
            [{oxscript add="$( '.dd-add-delivery-address' ).click( function() {  $('.dd-available-addresses .dd-action').remove(); $( this ).find( 'label.btn' ).button('toggle'); } );"}]
            [{oxscript add="$( 'input[name=\"oxaddressid\"]' ).oxUserShipingAddressSelect();"}]
            [{oxscript add="$( window ).load( function() { if( !isMobileDevice() ) { oxEqualizer.equalHeight( $( '.dd-available-addresses .panel .card-body' ) ); } } );"}]
            [{oxscript add="$( '.dd-edit-shipping-address' ).click(function(){ $( '#shippingAddressForm' ).show(); $( 'html, body' ).animate( { scrollTop: $( '#shippingAddressForm' ).offset().top - 80 }, 600 ); } );"}]

            [{block name="form_user_shipping_address_select"}]
                <div class="row dd-available-addresses" data-toggle="buttons">
                    [{foreach from=$aUserAddresses item=address name="shippingAdresses"}]
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    [{block name="form_user_shipping_address_actions"}]
                                    [{if $address->isSelected()}]
                                        [{block name="form_user_shipping_address_edit_action"}]
                                        <button class="btn btn-outline-primary btn-sm float-right dd-action dd-edit-shipping-address edit-button">
                                            <i class="moga-pencil"></i>
                                        </button>
                                        [{/block}]
                                        [{block name="form_user_shipping_address_delete_action"}]
                                        <button class="btn btn-danger btn-sm float-right dd-action dd-delete-shipping-address edit-button"
                                                data-toggle="modal"
                                                data-target="#delete_shipping_address_[{$smarty.foreach.shippingAdresses.iteration}]">
                                            <i class="moga-trash"></i>
                                        </button>
                                        [{/block}]
                                    [{/if}]
                                    [{/block}]
                                    [{include file="widget/address/shipping_address.tpl" delivadr=$address}]
                                </div>
                                <div class="card-footer">
                                    <label class="btn btn-outline-primary btn-block[{if $address->isSelected()}] active[{/if}]">
                                        <input type="radio" name="oxaddressid" value="[{$address->oxaddress__oxid->value}]" autocomplete="off" [{if $address->isSelected()}]checked[{/if}]><i class="moga-check"></i> [{oxmultilang ident="DD_USER_SHIPPING_SELECT_ADDRESS"}]
                                    </label>
                                </div>
                            </div>
                        </div>
                    [{/foreach}]

                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card dd-add-delivery-address">
                            <div class="card-body text-center">
                                <i class="moga-plus-circle"></i><br/>
                                [{oxmultilang ident="DD_USER_SHIPPING_ADD_DELIVERY_ADDRESS"}]
                            </div>
                            <div class="card-footer" >
                                <label class="btn btn-outline-primary btn-block">
                                    <input type="radio" name="oxaddressid" value="-1" autocomplete="off"><i class="moga-check"></i> [{oxmultilang ident="DD_USER_SHIPPING_SELECT_ADDRESS"}]
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            [{/block}]

        [{if $onChangeClass == 'user'}]
            </div>
        [{/if}]
    [{/if}]
[{/if}]

<div id="shippingAddressForm" [{if $delivadr}]style="display: none;"[{/if}]>
    <div class="row g-2">
        <div class="col-md-6 mb-3">
            <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxsal)}] req[{/if}]" for="deladr_oxaddress__oxsal">[{oxmultilang ident="TITLE"}]</label>
            [{include file="form/fieldset/salutation.tpl" name="deladr[oxaddress__oxsal]" value=$delivadr->oxaddress__oxsal->value value2=$deladr.oxaddress__oxsal class="form-control" id="deladr_oxaddress__oxsal"}]
        </div>
    </div>
    <div class="row g-2">
        <div class="col-md-6 mb-3[{if $aErrors.oxaddress__oxfname}] oxInValid[{/if}]">
            <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxfname)}] req[{/if}]">[{oxmultilang ident="FIRST_NAME"}]</label>
            <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxfname)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" maxlength="255" name="deladr[oxaddress__oxfname]" value="[{if isset( $deladr.oxaddress__oxfname )}][{$deladr.oxaddress__oxfname}][{else}][{$delivadr->oxaddress__oxfname->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxfname)}] required=""[{/if}]>
            [{if $oView->isFieldRequired(oxaddress__oxfname)}]
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxfname}]
            [{/if}]
        </div>
        <div class="col-md-6 mb-3[{if $aErrors.oxaddress__oxlname}] oxInValid[{/if}]">
            <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxlname)}] req[{/if}]">[{oxmultilang ident="LAST_NAME"}]</label>
            <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxlname)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" maxlength="255" name="deladr[oxaddress__oxlname]" value="[{if isset( $deladr.oxaddress__oxlname )}][{$deladr.oxaddress__oxlname}][{else}][{$delivadr->oxaddress__oxlname->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxlname)}] required=""[{/if}]>
            [{if $oView->isFieldRequired(oxaddress__oxlname)}]
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxlname}]
            [{/if}]
        </div>
    </div>
    <div class="mb-3[{if $aErrors.oxaddress__oxcompany}] oxInValid[{/if}]">
        <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxcompany)}] req[{/if}]">[{oxmultilang ident="COMPANY"}]</label>
        <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxcompany)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" size="37" maxlength="255" name="deladr[oxaddress__oxcompany]" value="[{if isset( $deladr.oxaddress__oxcompany )}][{$deladr.oxaddress__oxcompany}][{else}][{$delivadr->oxaddress__oxcompany->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxcompany)}] required=""[{/if}]>
        [{if $oView->isFieldRequired(oxaddress__oxcompany)}]
        [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxcompany}]
        [{/if}]
    </div>
    <div class="mb-3[{if $aErrors.oxaddress__oxaddinfo}] oxInValid[{/if}]">
        [{assign var="_address_addinfo_tooltip" value="FORM_FIELDSET_USER_SHIPPING_ADDITIONALINFO2_TOOLTIP"|oxmultilangassign}]
        <label [{if $_address_addinfo_tooltip}]title="[{$_address_addinfo_tooltip}]"[{/if}] class="form-label[{if $oView->isFieldRequired(oxaddress__oxaddinfo)}] req[{/if}][{if $_address_addinfo_tooltip}] tooltip[{/if}]">[{oxmultilang ident="ADDITIONAL_INFO"}]</label>
        <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxaddinfo)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" size="37" maxlength="255" name="deladr[oxaddress__oxaddinfo]" value="[{if isset( $deladr.oxaddress__oxaddinfo )}][{$deladr.oxaddress__oxaddinfo}][{else}][{$delivadr->oxaddress__oxaddinfo->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxaddinfo)}] required=""[{/if}]>
        [{if $oView->isFieldRequired(oxaddress__oxaddinfo)}]
            [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxaddinfo}]
        [{/if}]
    </div>
    <div class="mb-3[{if $aErrors.oxaddress__oxstreet}] oxInValid[{/if}]">
        <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxstreet) || $oView->isFieldRequired(oxaddress__oxstreetnr)}] req[{/if}]">[{oxmultilang ident="STREET_AND_STREETNO"}]</label>
        <div class="row g-2">
            <div class="col-8">
                <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxstreet)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" data-fieldsize="pair-xsmall" maxlength="255" name="deladr[oxaddress__oxstreet]" value="[{if isset( $deladr.oxaddress__oxstreet )}][{$deladr.oxaddress__oxstreet}][{else}][{$delivadr->oxaddress__oxstreet->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxstreet)}] required=""[{/if}]>
            </div>
            <div class="col-4">
                <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxstreetnr)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" data-fieldsize="xsmall" maxlength="16" name="deladr[oxaddress__oxstreetnr]" value="[{if isset( $deladr.oxaddress__oxstreetnr )}][{$deladr.oxaddress__oxstreetnr}][{else}][{$delivadr->oxaddress__oxstreetnr->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxstreetnr)}] required=""[{/if}]>
            </div>
            [{if $oView->isFieldRequired(oxaddress__oxstreet) || $oView->isFieldRequired(oxaddress__oxstreetnr)}]
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxstreet}]
            [{/if}]
        </div>
    </div>

    <div class="mb-3[{if $aErrors.oxaddress__oxzip || $aErrors.oxaddress__oxcity}] oxInValid[{/if}]">
        <label class="form-label col-12[{if $oView->isFieldRequired(oxaddress__oxzip) || $oView->isFieldRequired(oxaddress__oxcity)}] req[{/if}]">[{oxmultilang ident="POSTAL_CODE_AND_CITY"}]</label>
        <div class="row g-2">
            <div class="col-5">
                <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxzip)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" data-fieldsize="small" maxlength="50" name="deladr[oxaddress__oxzip]" value="[{if isset( $deladr.oxaddress__oxzip )}][{$deladr.oxaddress__oxzip}][{else}][{$delivadr->oxaddress__oxzip->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxzip)}] required=""[{/if}]>
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxzip}]
            </div>
            <div class="col-7">
                <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxcity)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" data-fieldsize="pair-small" maxlength="255" name="deladr[oxaddress__oxcity]" value="[{if isset( $deladr.oxaddress__oxcity )}][{$deladr.oxaddress__oxcity}][{else}][{$delivadr->oxaddress__oxcity->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxcity)}] required=""[{/if}]>
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxcity}]
            </div>
        </div>
    </div>
    [{block name="form_user_shipping_country"}]
        <div class="mb-3[{if $aErrors.oxaddress__oxcountryid}] oxInValid[{/if}]">
            <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxcountryid)}] req[{/if}]" for="delCountrySelect">[{oxmultilang ident="COUNTRY"}]</label>
            <select class="form-select[{if $oView->isFieldRequired(oxaddress__oxcountryid)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" id="delCountrySelect" name="deladr[oxaddress__oxcountryid]"[{if $oView->isFieldRequired(oxaddress__oxcountryid)}] required=""[{/if}]>
                [{if $oViewConf->getCountryList()|@count > 1}]
                <option value="">-</option>
                [{/if}]
                [{assign var="blCountrySelected" value=false}]
                [{foreach from=$oViewConf->getCountryList() item=country key=country_id}]
                    [{assign var="sCountrySelect" value=""}]
                    [{if !$blCountrySelected}]
                        [{if (isset($deladr.oxaddress__oxcountryid) && $deladr.oxaddress__oxcountryid == $country->oxcountry__oxid->value) ||
                             (!isset($deladr.oxaddress__oxcountryid) && ($delivadr->oxaddress__oxcountry->value == $country->oxcountry__oxtitle->value or
                              $delivadr->oxaddress__oxcountry->value == $country->oxcountry__oxid->value or
                              $delivadr->oxaddress__oxcountryid->value == $country->oxcountry__oxid->value))}]
                            [{assign var="blCountrySelected" value=true}]
                            [{assign var="sCountrySelect" value="selected"}]
                        [{/if}]
                    [{/if}]
                    <option value="[{$country->oxcountry__oxid->value}]" [{$sCountrySelect}]>[{$country->oxcountry__oxtitle->value}]</option>
                [{/foreach}]
            </select>
            [{if $oView->isFieldRequired(oxaddress__oxcountryid)}]
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxcountryid}]
            [{/if}]
        </div>
    [{/block}]
    <div class="row g-2">
        <div class="col-md-6 mb-3[{if $aErrors.oxaddress__oxfon}] oxInValid[{/if}]">
            <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxfon)}] req[{/if}]">[{oxmultilang ident="PHONE"}]</label>
            <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxfon)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" size="37" maxlength="128" name="deladr[oxaddress__oxfon]" value="[{if isset( $deladr.oxaddress__oxfon )}][{$deladr.oxaddress__oxfon}][{else}][{$delivadr->oxaddress__oxfon->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxfon)}] required=""[{/if}]>
            [{if $oView->isFieldRequired(oxaddress__oxfon)}]
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxfon}]
            [{/if}]
        </div>
        <div class="col-md-6 mb-3[{if $aErrors.oxaddress__oxfax}] oxInValid[{/if}]">
            <label class="form-label[{if $oView->isFieldRequired(oxaddress__oxfax)}] req[{/if}]">[{oxmultilang ident="FAX"}]</label>
            <input class="form-control[{if $oView->isFieldRequired(oxaddress__oxfax)}] js-oxValidate js-oxValidate_notEmpty[{/if}]" type="text" size="37" maxlength="128" name="deladr[oxaddress__oxfax]" value="[{if isset( $deladr.oxaddress__oxfax )}][{$deladr.oxaddress__oxfax}][{else}][{$delivadr->oxaddress__oxfax->value}][{/if}]"[{if $oView->isFieldRequired(oxaddress__oxfax)}] required=""[{/if}]>
            [{if $oView->isFieldRequired(oxaddress__oxfax)}]
                [{include file="message/inputvalidation.tpl" aErrors=$aErrors.oxaddress__oxfax}]
            [{/if}]
        </div>
    </div>
</div>
[{if !$noFormSubmit}]
    <div class="mb-3">
        <div class="col-12 col-lg-9 ml-lg-auto">
             <p class="req-waring">[{oxmultilang ident="COMPLETE_MARKED_FIELDS"}]</p>
            <button id="accUserSaveBottom" type="submit" class="submitButton" name="save">[{oxmultilang ident="SAVE"}]</button>
        </div>
    </div>
[{/if}]
