class DonationsController < ApplicationController

	def new
        @project=Project.friendly.find(params[:project_id])
		@donation = @project.donations.build
	end

  def show
    @project=Project.friendly.find(params[:project_id])
    @payment_links=[
        {"name":"Khalti","links":"https://play.google.com/store/apps/details?id=com.khalti&hl=en_AU","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102429/Banks%20For%20Nepaila/vtoxj9t4UWl6qxWUPGpv7ndJuJs_W3UTnQYpBwJ7xBMuRJ2TE6d71NrwWU6Nkbq0Zs8_s180_sjfojl.png"},
        {"name":"Esewa","links":"https://play.google.com/store/apps/details?id=com.f1soft.esewa&hl=en_AU","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102542/Banks%20For%20Nepaila/MRzMmiJAe0-xaEkDKB0MKwv1a3kjDieSfNuaIlRo750_EgqxjRFWKKF7xQyRSb4O95Y_s180_htkaxs.png"},
        {"name":"IME pay","links":"https://play.google.com/store/apps/details?id=com.swifttechnology.imepay&hl=en_AU","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102606/Banks%20For%20Nepaila/LzKjYKvzLnyMq9XaRm3RauNI-ni7QwuN4r_IzClSXUNpO6o443SDACRd92ePn03UNHU_s180_bdzh4y.png"},
        {"name":"Kumari Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.kumarimobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040051/Banks%20For%20Nepaila/_usIkSLHJprR4t1Stk01lgtTu8VwWGnDk4OvBjWrfcO80aBZYs3Hl7o64tdzK6p-gA_s180_uuclmv.png"},
        {"name":"Nepal Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.nepalmobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040067/Banks%20For%20Nepaila/0pUBC7UXz8XU1uoBR8fyaua_kQzda2R8N6WODl0610ccF9mKl_aHjifARJKOw-_s_-s_s180_b5f2vi.png"},
        {"name":"Rastriya Banijya Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.rastriyabanijyamobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040086/Banks%20For%20Nepaila/1xuVHf8hBZ9kbB6Yes-zndaBhPWcsAL_9dtpHHLBo9e4JV1kO-r6qYn67l0QUuefQg_s180_whvix1.png"},
        {"name":"Agriculture Development Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.banksmart.adbl&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040102/Banks%20For%20Nepaila/I4i8X8W-AcE6f-mVP46pecE5E1adqLnSuOUG1Jt2fVj5PaF6mX6PHNVbOMJoNrRuCA_s180_dinrnl.png"},
        {"name":"Nabil Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.nabilmbank&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040130/Banks%20For%20Nepaila/aENATuoGSCiQ6HeGxHGPkNtA8Swl96-jxgm6o5xVjlN8M9SFk0F3brbeKCxxOiOdP4M_s180_go4syn.png"},
        {"name":"Nepal Investment Bank","links":"https://play.google.com/store/apps/details?id=com.NIBLSMSBanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040144/Banks%20For%20Nepaila/ndruHIzR4D9G64ytrJ157TqM6e9WDNdPt6hX81-nfdas_cF92TkPydEizPglLt48XA_s180_x2s081.png"},
        {"name":"Standard Chartered Bank Nepal","links":"https://play.google.com/store/apps/details?id=com.sc.mobilebanking.np&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040164/Banks%20For%20Nepaila/SID29tkdCuZPZV6L-lPZbepsF6B6SwH4Z2blnjUckD1hvx1qVT-UHDH2hceqkR-YfZY_s180_hwgyfl.png"},
        {"name":"Himalayan Bank","links":"https://play.google.com/store/apps/details?id=com.hbl.himb&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040180/Banks%20For%20Nepaila/Kgsa8kpIaNYovbZ0GTKqspKh1h9nagdVumTXCUX9k1NcR1m-AlmjGlskLS2Uk9Eslw_s180_ghakbs.jpg"},
        {"name":"Nepal SBI Bank","links":"https://play.google.com/store/apps/details?id=com.SbiNpAnywhere&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040222/Banks%20For%20Nepaila/x3F284Ntb5YVeEdBiaEmtqWjWiDkOflx6VgHhkTP8rR1NedG9Vosj5UX-q4Nl_Cfr03c_s180_wwjzxo.png"},
        {"name":"Nepal Bangladesh Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.nbbank.activities.starter&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040236/Banks%20For%20Nepaila/RNe1TrzCzppskKDlt8mnvqufC_cBxBCkG4z7-DL8FQPtszufq_riE-pF3OxbuXCOGbM_s180_qztffu.png"},
        {"name":"Everest Bank","links":"https://play.google.com/store/apps/details?id=com.everestbankltd.mbanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040250/Banks%20For%20Nepaila/BVzDnnzDi0haAjsZMl324xGUP38VLg2TlRvGDv5F6-A_5ILAoOfn6Nto7dSzrbWWt78_s180_tr5fa1.png"},
        {"name":"Bank of kathmandu","links":"https://play.google.com/store/apps/details?id=com.f1soft.banksmart.bok&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040265/Banks%20For%20Nepaila/ao61kuqGwEbz7-rjgs_6ilsbJUkJh0qyCq2SaEt1PJf5ll5FPN32hEFs0-VCE6s2iWay_s180_ccsu0r.png"},
        {"name":"NCC Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.nccmobilebanking.activities.starter&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040310/Banks%20For%20Nepaila/ECPT4NZqSiEi5gzA7oimoUwhY4HlP_9QmciSwliE9Yi0YzY_3IJknOMl9xgrVHD5yhc_s180_pxbjbi.jpg"},
        {"name":"Prabhu Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.kistmobilebanking.activities.main&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040293/Banks%20For%20Nepaila/B_vXZ4UUXc242bE-mFHIst69QUA3bPnzANcd6piCjBW7aas3mKpeC4Fsj_4tBkmvS7c_s180_sq4eew.png"},
        {"name":"Laxmi Bank","links":"https://play.google.com/store/apps/details?id=com.laxmibank.mobilemoney&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040354/Banks%20For%20Nepaila/j_vfSLB8Ez228-udaUZirxFuxadFUeh3dHnwmKiqDmXYWdfmBvJqBOaTwg26SxdFQgIO_s180_oe26w3.png"},
        {"name":"Global IME Bank Limited ","links":"https://play.google.com/store/apps/details?id=com.f1soft.globalmobilebanking.sms.activities.main&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040409/Banks%20For%20Nepaila/uoIL6Srpvg6Ou9yJhuTiVfZH4Yhc9YRrNXr4Wmde-3t4zr0YXnrd_8GD4KAQ2rxFSAI_s180_rusv8c.png"},
        {"name":"Citizens Bank International Limited","links":"https://play.google.com/store/apps/details?id=com.f1soft.citizensmobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040335/Banks%20For%20Nepaila/I6uud7rSaA4wRuI3e_UhrmJNw0LMx0YQLX4CrulpF87AilnGLj4OVuskK9nlG_Ca59w_s180_xc8i8i.png"},
        {"name":"Prime Commercial Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.primemobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040475/Banks%20For%20Nepaila/Aklxbuj61aVlQAQ44eOQ3iIB59e8v_LPGiIMN2x6sFqlXfRCBoAAc8b3-UfwQfPP1w_s180_fmerjs.png"},
        {"name":"Sunrise Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.sunrisemobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040501/Banks%20For%20Nepaila/bSFfTcSuDPC9EjVA5BrFpCKw38QtRT6fvBU6C5yvQ_imwY8MgUf2ZW2kJOsiwLKi4hc_s180_y5geej.png"},
        {"name":"NMB Bank Nepal","links":"https://play.google.com/store/apps/details?id=com.f1soft.nmbmobilebanking.activities.main&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040386/Banks%20For%20Nepaila/1ifFEJ8-kxPco5Y6w2BZJ0s2Q3O6DI2kAujc1bkMglM1yXm5_RulmL5bqx_Ge8OT3w_s180_ppgsb4.png"},
        {"name":"NIC Asia Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.nicasiamobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040529/Banks%20For%20Nepaila/xJCJFQVa79lQeekgshkYOrXR8xHwmsNB9Q6u-uJI07CbtfDgdewsvPZn4oqdHFdXAaM_s180_ntvg9w.png"},
        {"name":"Siddhartha Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.banksmart.siddhartha&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040557/Banks%20For%20Nepaila/PGYhY7xZMKEU9hmsiREKz4pDD8jlnOx6X0kI0yoMz5KqV8OiHTV76DlUmdowjLhPbkO1_s180_qfmjhd.png"},
        {"name":"Machhapuchchhre Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.machmobilebanking.activities.main&hl=en","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040587/Banks%20For%20Nepaila/T_qt8pEgX5DYQ6wcfa3VYnut6Tx9B5eOv6JwwNMGSLDzsuao_u__hsVvpVM0JC0HENJy_s180_qydwky.png"},
        {"name":"Mega Bank Nepal Limited","links":"https://play.google.com/store/apps/details?id=com.f1soft.megafonebank.activities.starter&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040449/Banks%20For%20Nepaila/XZIEg0U5gH1Edsu1C7aTF-AmvG6OV9rfH9usJkzQCCjWRvOupPmd6P7lhVsvQMQcI5s_s180_witmbd.png"},
        {"name":"Civil Bank Limited","links":"https://play.google.com/store/apps/details?id=com.f1soft.civilfonebank.activities.starter&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040617/Banks%20For%20Nepaila/4LzNFkXJ25rQqGjei2WmyIoeBSSUo4hnZC7Du1rAsA4h3YHIEUF4JABNL6Hv5cYw-A_s180_bri6pl.png"},
        {"name":"Century Bank Limited","links":"https://play.google.com/store/apps/details?id=com.centurybankapp&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040649/Banks%20For%20Nepaila/ZZ9zi5HguX6XqtTZImir9DyiGsUpZwJGVfT5ubs_GDDyiLOqGObs0tFwy-GPXtmJWVs_s180_lyuktd.png"},
        {"name":"Sanima Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.sanimamobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620040931/Banks%20For%20Nepaila/84mrrnjk4AMb9y591kOsBl2h3aofwCWqxG1y28B1lfOQxsy2QawTfxk1YfqazaGrzuQ_s180_qmzxna.png"},
        {"name":"Garima Development Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.garimamobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102254/Banks%20For%20Nepaila/ynApG3L-pF0wvqDHl2o1tjd55kuuhCnHR27N71KATww7To2pB168_oGoRnNu2CaTG9cK_s180_prtd1c.png"},
        {"name":"Jyoti Bikash bank ltd","links":"https://play.google.com/store/apps/details?id=com.f1soft.jyotimobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102250/Banks%20For%20Nepaila/hyk5VGixuuVjW3bNsGcQB4x5lPB8NnGRruBpueArU8RHNojW1GjVHIPp-Ua8lbYOJBQ_s180_nu0gnu.png"},
        {"name":"Reliance Finance ltd","links":"https://play.google.com/store/apps/details?id=com.reliancesavingsbank.mobile&hl=en_AU","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102359/Banks%20For%20Nepaila/1vpyzqFRxnkU9KsY-u3B2NpGVwKD1lnhaizDUe3DXoq0wAF0QRhGlT2JW5hXUDH6xNc_s180_bb2iuq.png"},
        {"name":"Mahalaxmi Bikas Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.mallikamobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102351/Banks%20For%20Nepaila/-uBSS45ocV87o2rXW8wGcgCrHMIdUdT-cVcXhiuY3eldHg9steCJsVTPqkSA8p_V6WJb_s180_jyso2w.jpg"},
        {"name":"Muktinath Bikas Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.muktinathmobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620102345/Banks%20For%20Nepaila/Vw4W2Rz9zUWjf9sMNGKvzJRwez4D0EJbnPqAjWp4tLxDvmedkW7XCXeeY6RBcNgc_ss_s180_rhzsi1.png"},
        {"name":"Kamana Sewa Vikas Bank","links":"https://play.google.com/store/apps/details?id=com.f1soft.kaskimobilebanking&hl=en&gl=US","img":"https://res.cloudinary.com/di7sekeem/image/upload/v1620116635/Banks%20For%20Nepaila/0BePmmIOGo0Gx7jgUKCg4vJVrLdWKX8AbzZ_vU9q2sGABoScAE5fMBY6WP4h1YMEdpQ_s180_wqce3b.png"}
    ]
    end

	def create
        @project=Project.friendly.find(params[:project_id])
        @donation = @project.donations.build(donation_params)
        respond_to do |format|
            if @donation.save
                    if user_signed_in?
                      current_user.gamification.create!(points:20)
                    end
                    format.html { redirect_to [@project,@donation] }
            else
                    format.html { render :action=>'new'}
            end
        end
  end


private

  def donation_params
      params.require(:donation).permit(:donor_name,:address,:contact,:donation_amount)
    end

end
