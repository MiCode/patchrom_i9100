.class public Lcom/android/phone/PhoneUtilsExt;
.super Ljava/lang/Object;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtilsExt$CONFCallState;,
        Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;,
        Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;,
        Lcom/android/phone/PhoneUtilsExt$CallType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static IsVTCallInRejectList:Z

.field private static LGTisPartyCall:Z

.field private static LGTmergeState:Z

.field private static LGTtransferState:Z

.field public static OTACancel:Z

.field public static PrlupdateSuccessString:Ljava/lang/String;

.field public static RoamingOTA:Z

.field private static final VDBG:Z

.field public static callEnd:Z

.field public static canMulti:Z

.field public static currentPrlVer:Ljava/lang/String;

.field public static defaultIMEI:Ljava/lang/String;

.field public static durationTime:J

.field static isSendDtmf:Z

.field static isSendEmptyFlash:Z

.field public static mCANPToggleTimer:Landroid/os/CountDownTimer;

.field private static mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

.field public static mCallCardNumber:Ljava/lang/String;

.field private static mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static mContactName:Ljava/lang/String;

.field public static mContactsNumber:Ljava/lang/String;

.field private static mCountryCode:Ljava/lang/String;

.field public static mDisplayName:Ljava/lang/String;

.field private static mInternationalAccessCode:Ljava/lang/String;

.field public static mIsCMFCall:Z

.field public static mIsMessageCall:Z

.field public static mIsWzoneCall:Z

.field private static mLGTRADCallog:I

.field private static mLGTRADTemp:I

.field private static mOpticsCallHistoryShow:Z

.field private static mOutgoingCallString:Ljava/lang/String;

.field private static mOutgoingCallUri:Landroid/net/Uri;

.field public static mPlaceCallTime:J

.field private static mRevertDialingNumber:Z

.field private static mSKTRADDialingToKoreaEnabled:Z

.field public static mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static mSkipSKTRADDialOption:Z

.field private static mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

.field private static mUserInputDialingNumber:Ljava/lang/String;

.field public static mWzoneprefix:Ljava/lang/String;

.field private static outgoingToKorea:Z

.field private static phone:Lcom/android/internal/telephony/Phone;

.field private static sMe:Lcom/android/phone/PhoneUtilsExt;

.field private static smsCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    .line 70
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->VDBG:Z

    .line 77
    sput-wide v4, Lcom/android/phone/PhoneUtilsExt;->durationTime:J

    .line 78
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->RoamingOTA:Z

    .line 119
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mOpticsCallHistoryShow:Z

    .line 122
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 123
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 125
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 130
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 132
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mDisplayName:Ljava/lang/String;

    .line 133
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 136
    const-string v0, "000000000000000"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->defaultIMEI:Ljava/lang/String;

    .line 139
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 142
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 154
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 155
    sput-wide v4, Lcom/android/phone/PhoneUtilsExt;->mPlaceCallTime:J

    .line 156
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->OTACancel:Z

    .line 218
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 925
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 927
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->sMe:Lcom/android/phone/PhoneUtilsExt;

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 228
    return-void
.end method

.method public static IsDialingNumberRevert()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 321
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter "number"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 712
    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming outgoing call number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 715
    const-string v0, "LGT_RAD_TEMP"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    .line 716
    const-string v0, "LGT_RAD_CALLOG"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADCallog(I)V

    .line 717
    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.AUTO_DIAL_CALLOG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setRADCode()V

    .line 719
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 722
    const-string v0, "SMS_CALL"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSMS(Z)V

    .line 723
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const-string v0, "PhoneUtilsExt"

    const-string v1, "RoamingArea SMS Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    return-void
.end method

.method public static OutgoingCallSKTRAD(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 666
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setPhoneAppSetting()V

    .line 668
    const-string v2, "OPTICS_CALL_HISTORY_SHOW"

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 669
    .local v0, OpticsCallHistoryShow:Z
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setOpticsCallHistoryShow(Z)V

    .line 671
    const-string v2, "SKTRADDialOption"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, SKTRADDialOption:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-ne v2, v3, :cond_2

    .line 675
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    .line 676
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 680
    :goto_0
    sput-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 702
    :cond_0
    :goto_1
    return-void

    .line 678
    :cond_1
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_0

    .line 684
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 686
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 687
    sput-boolean v5, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    goto :goto_1

    .line 691
    :cond_3
    sput-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 695
    const-string v2, "korea"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 696
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_1

    .line 698
    :cond_4
    const-string v2, "abroad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_1
.end method

.method public static OutgoingCallSKTWZone(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 656
    const-string v0, "com.skt.iswzone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 657
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 658
    const-string v0, "Wzoneprefix"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 661
    :cond_0
    return-void
.end method

.method static changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 832
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setUserInputDialingNumber(Ljava/lang/String;)V

    .line 834
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 836
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getInternationalAccessCode()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, InternationalAccessCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, CountryCode:Ljava/lang/String;
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternationalAccessCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  CountryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 844
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 876
    .end local p0
    :goto_0
    return-object p0

    .line 846
    .restart local p0
    :cond_0
    const-string v2, "0234167010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 848
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "82"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 850
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 851
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 852
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "82"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 855
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 856
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 859
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_4

    .line 860
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 862
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 863
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 865
    :cond_5
    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 866
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 868
    :cond_6
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 869
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 871
    :cond_7
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 872
    :cond_8
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 875
    :cond_9
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 465
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setUserInputDialingNumber(Ljava/lang/String;)V

    .line 466
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 468
    const-string v1, "limited_service_state_for_kt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "010114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "011114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "017114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0082114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "+82114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    :cond_0
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 477
    const-string p0, "+82263439000"

    .line 535
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 479
    .restart local p0
    :cond_2
    const-string v1, "111"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "112"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "113"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "119"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "122"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "125"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "127"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 487
    :cond_3
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 489
    const-string v1, "limited_service_state_for_kt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    const-string p0, "+82232100404"

    goto :goto_0

    .line 497
    :cond_4
    const-string v1, "change_voice_mailbox_number_for_rad"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 498
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 499
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->phone:Lcom/android/internal/telephony/Phone;

    .line 501
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, orig_number:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 504
    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "CHOCOPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orig_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object p0, v0

    .line 505
    goto/16 :goto_0

    .line 510
    .end local v0           #orig_number:Ljava/lang/String;
    :cond_6
    const-string v1, "001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "0082"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 511
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 513
    :cond_8
    const-string v1, "00700"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00345"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00365"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00321"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 514
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 516
    :cond_a
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 517
    :cond_b
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 520
    :cond_c
    const-string v1, "1544"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1577"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1588"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1599"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1644"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_e

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 524
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_10

    :cond_f
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+8210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 527
    :cond_10
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 530
    :cond_11
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 534
    :cond_12
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0
.end method

.method public static changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 449
    move-object v0, p0

    .line 451
    .local v0, orig_number:Ljava/lang/String;
    const-string v2, "*88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 455
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 458
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orig_number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    return-object v0
.end method

.method public static fgConnectionsIsIncoming()Z
    .locals 4

    .prologue
    .line 1086
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1087
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1088
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1089
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1090
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fgConnectionsIsIncoming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    .line 1095
    :goto_0
    return v0

    .line 1094
    :cond_0
    const-string v0, "PhoneUtilsExt"

    const-string v1, "fgConnections is not have Connection!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findAccessCode(Z)Z
    .locals 10
    .parameter "set"

    .prologue
    const/4 v6, 0x0

    .line 803
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 804
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/android/phone/RoamingData;

    invoke-direct {v0, v1}, Lcom/android/phone/RoamingData;-><init>(Landroid/content/Context;)V

    .line 805
    .local v0, DBdata:Lcom/android/phone/RoamingData;
    const-string v7, "RoamingPrefs"

    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 807
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v7, "fakesid"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, sid:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 809
    :cond_0
    const-string v7, "ril.cdma.sid"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 811
    :cond_1
    const-string v2, ""

    .line 812
    .local v2, data:Ljava/lang/String;
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/android/phone/RoamingData;->getConnectNumBySid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 815
    if-nez v2, :cond_3

    .line 827
    :goto_0
    return v6

    .line 817
    :catch_0
    move-exception v3

    .line 818
    .local v3, e:Ljava/lang/Exception;
    if-eqz p0, :cond_2

    .line 819
    const-string v7, "00"

    sput-object v7, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 820
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/RoamingData;->close()V

    goto :goto_0

    .line 824
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/RoamingData;->close()V

    .line 825
    if-eqz p0, :cond_4

    .line 826
    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 827
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;
    .locals 1

    .prologue
    .line 1000
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    return-object v0
.end method

.method public static getCallCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallEnd()Z
    .locals 1

    .prologue
    .line 901
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    return v0
.end method

.method public static getCallType()Lcom/android/phone/PhoneUtilsExt$CallType;
    .locals 3

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": getCallType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    return-object v0
.end method

.method public static getContactsNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    const-string v0, "82"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 776
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1129
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1130
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-object v0
.end method

.method public static getInternationalAccessCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 764
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    :cond_0
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 766
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getLGTRADCallog()I
    .locals 1

    .prologue
    .line 799
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADCallog:I

    return v0
.end method

.method public static getLGTRADTemp()I
    .locals 1

    .prologue
    .line 791
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    return v0
.end method

.method public static getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 584
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 596
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 586
    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 587
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 589
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v0, :cond_0

    .line 590
    :cond_3
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 591
    const-string v0, "***"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 592
    :cond_4
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSKTRADOutgoingCallNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSKTRADOutgoingCallUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    return-object v0
.end method

.method public static getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "number"

    .prologue
    .line 374
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "+82"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "0082"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "+082"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "082"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "82"

    aput-object v7, v0, v6

    .line 376
    .local v0, SKTRADPrefixlist:[Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 377
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 378
    .local v5, strPrefix:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 379
    .local v3, internationalNumPrefixPos:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x9

    if-ge v3, v6, :cond_1

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 383
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #internationalNumPrefixPos:I
    .end local v4           #len$:I
    .end local v5           #strPrefix:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0

    .line 377
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #internationalNumPrefixPos:I
    .restart local v4       #len$:I
    .restart local v5       #strPrefix:Ljava/lang/String;
    .restart local p0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
    .locals 1

    .prologue
    .line 996
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-object v0
.end method

.method public static getUserInputDialingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static isAutoDial()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 729
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 730
    .local v1, context:Landroid/content/Context;
    const-string v6, "RoamingPrefs"

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 732
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 733
    const-string v6, "connect_number"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, AutoDial:Ljava/lang/String;
    const/4 v2, 0x0

    .line 735
    .local v2, isSetAutoDial:Z
    if-eqz v0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 736
    const-string v6, "AUTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 737
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 743
    .end local v0           #AutoDial:Ljava/lang/String;
    .end local v2           #isSetAutoDial:Z
    :goto_1
    return v4

    .restart local v0       #AutoDial:Ljava/lang/String;
    .restart local v2       #isSetAutoDial:Z
    :cond_1
    move v2, v5

    .line 736
    goto :goto_0

    .line 741
    .end local v0           #AutoDial:Ljava/lang/String;
    .end local v2           #isSetAutoDial:Z
    :cond_2
    const-string v4, "PhoneUtilsExt"

    const-string v6, " AUTO_DIAL_TEMPORARY_OFF"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v5

    .line 743
    goto :goto_1
.end method

.method public static isDefaultIMEI()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 232
    const-string v2, "roaming_auto_dial_for_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    .local v0, currentIMEI:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 235
    .end local v0           #currentIMEI:Ljava/lang/String;
    :cond_1
    const-string v2, "ril.IMEI"

    const-string v3, "Default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #currentIMEI:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->defaultIMEI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEmergencyNumberToChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 325
    const-string v0, "114"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "112"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "113"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "119"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "125"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEvdoOnly()Z
    .locals 3

    .prologue
    .line 1101
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_EVDO_Only_Mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    .line 1103
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    const/4 v0, 0x1

    .line 1108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLGTRADSetting()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 755
    .local v0, context:Landroid/content/Context;
    const-string v2, "RoamingPrefs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 756
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "toggle_auto_dialing"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isLGTisPartyCall()Z
    .locals 1

    .prologue
    .line 989
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTisPartyCall:Z

    return v0
.end method

.method public static isLGTmergeState()Z
    .locals 1

    .prologue
    .line 974
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    return v0
.end method

.method public static isLGTtransferState()Z
    .locals 1

    .prologue
    .line 981
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    return v0
.end method

.method public static isRoamingArea()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 266
    const-string v8, "roaming_auto_dial_for_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    .local v0, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "is_roaming_area"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 270
    .local v5, roamingArea:I
    if-ne v5, v6, :cond_1

    .line 271
    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "PhoneUtilsExt"

    const-string v8, "RoamingArea!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 294
    .end local v0           #context:Landroid/content/Context;
    .end local v5           #roamingArea:I
    :goto_0
    return-object v6

    .line 274
    .restart local v0       #context:Landroid/content/Context;
    .restart local v5       #roamingArea:I
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 275
    .end local v5           #roamingArea:I
    :catch_0
    move-exception v2

    .line 277
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "PhoneUtilsExt"

    const-string v8, "Roaming exception!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 282
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    .line 283
    .local v4, isSimCardReady:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    sput-object v8, Lcom/android/phone/PhoneUtilsExt;->phone:Lcom/android/internal/telephony/Phone;

    .line 284
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 285
    .local v3, iccCard:Lcom/android/internal/telephony/IccCard;
    const-string v8, "ril.currentplmn"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, current_plmn:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 288
    sget-object v8, Lcom/android/phone/PhoneUtilsExt;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v8, v9, :cond_6

    move v4, v6

    .line 289
    :cond_3
    :goto_1
    sget-boolean v8, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v8, :cond_4

    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSimCardReady = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "isDefaultIMEI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "current_plmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 292
    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    :cond_6
    move v4, v7

    .line 288
    goto :goto_1

    .line 294
    :cond_7
    const-string v8, "domestic"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "unknown"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v4, :cond_8

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto :goto_2
.end method

.method public static isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isSKTRADEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSMS()Z
    .locals 1

    .prologue
    .line 921
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->smsCall:Z

    return v0
.end method

.method public static isSendDtmf()Z
    .locals 1

    .prologue
    .line 940
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return v0
.end method

.method public static isSendEmptyFlash()Z
    .locals 1

    .prologue
    .line 931
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    return v0
.end method

.method public static isThrWayCallAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1112
    .line 1113
    const-string v2, "*22"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1116
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 1125
    :goto_0
    return v0

    .line 1117
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1121
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1123
    goto :goto_0
.end method

.method public static isVideoCallType()Z
    .locals 3

    .prologue
    .line 349
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoCallType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-ne v0, v1, :cond_2

    .line 352
    :cond_1
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCONFCallState(Lcom/android/phone/PhoneUtilsExt$CONFCallState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1007
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    .line 1008
    return-void
.end method

.method public static setCallCardNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "callCardNumber"

    .prologue
    .line 892
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    .line 893
    return-void
.end method

.method public static setCallEnd(Z)V
    .locals 0
    .parameter "callend"

    .prologue
    .line 905
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 906
    return-void
.end method

.method public static setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": setCallType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    .line 346
    return-void
.end method

.method public static setContactsNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contactsNumber"

    .prologue
    .line 884
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    .line 885
    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 770
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public static setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1032
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1033
    .local v0, isEmergencyNumber:Z
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1034
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1036
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1037
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1038
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1065
    :cond_1
    :goto_0
    const-string v1, "0234167010"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1069
    :cond_2
    return-object p0

    .line 1039
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1040
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1042
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    .line 1043
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 1045
    :cond_5
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1048
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 1049
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1050
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 1051
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1052
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1053
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1054
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1056
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    .line 1057
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1058
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1060
    :cond_a
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0
.end method

.method public static setDialingNumberRevert(Z)V
    .locals 0
    .parameter "revert"

    .prologue
    .line 430
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    .line 431
    return-void
.end method

.method public static setEmptyFlash(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 935
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 936
    return-void
.end method

.method public static setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1073
    const-string v0, "mwcho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEndCallNumberForLGTRAD] phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isIncome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object p0

    .line 1078
    const-string v0, "mwcho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in Roaming Area ----- phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    const-string v0, "mwcho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after set end call.. phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-object p0
.end method

.method public static setInternationalAccessCode(Ljava/lang/String;)V
    .locals 0
    .parameter "accessCode"

    .prologue
    .line 760
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 761
    return-void
.end method

.method public static setLGTRADCallog(I)V
    .locals 0
    .parameter "callog"

    .prologue
    .line 795
    sput p0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADCallog:I

    .line 796
    return-void
.end method

.method public static setLGTRADTemp(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 787
    sput p0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    .line 788
    return-void
.end method

.method public static setLGTisPartyCall(Z)V
    .locals 0
    .parameter "lGTisPartyCall"

    .prologue
    .line 993
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTisPartyCall:Z

    .line 994
    return-void
.end method

.method public static setLGTmergeState(Z)V
    .locals 0
    .parameter "lGTmergeState"

    .prologue
    .line 978
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    .line 979
    return-void
.end method

.method public static setLGTtransferState(Z)V
    .locals 0
    .parameter "lGTtransferState"

    .prologue
    .line 985
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    .line 986
    return-void
.end method

.method public static setMultiCallState()V
    .locals 3

    .prologue
    .line 1012
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1013
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_2

    .line 1015
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_0

    .line 1016
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1017
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_1

    .line 1018
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTtransferState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1028
    :cond_1
    :goto_0
    return-void

    .line 1019
    :cond_2
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_4

    .line 1021
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_3

    .line 1022
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1023
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_1

    .line 1024
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_0

    .line 1026
    :cond_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_0
.end method

.method public static setOpticsCallHistoryShow(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 601
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mOpticsCallHistoryShow:Z

    .line 602
    return-void
.end method

.method public static setOutgoingToKorea(Z)V
    .locals 0
    .parameter "isKorea"

    .prologue
    .line 909
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->outgoingToKorea:Z

    .line 910
    return-void
.end method

.method public static setPhoneAppSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_dial"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 404
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 407
    :goto_0
    return-void

    .line 390
    :pswitch_0
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_0

    .line 394
    :pswitch_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 395
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 399
    :pswitch_2
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setPrlupdateSuccessString()V
    .locals 5

    .prologue
    .line 958
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->currentPrlVer:Ljava/lang/String;

    .line 959
    .local v1, lastest_prl:Ljava/lang/String;
    const-string v2, "ril.prl_ver_3"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, current_prl:Ljava/lang/String;
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastest_prl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , current_prl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e042f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->PrlupdateSuccessString:Ljava/lang/String;

    .line 967
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0430

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->PrlupdateSuccessString:Ljava/lang/String;

    .line 965
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->currentPrlVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setRADCode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 747
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 748
    .local v0, context:Landroid/content/Context;
    const-string v2, "RoamingPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 749
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "connect_number"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setInternationalAccessCode(Ljava/lang/String;)V

    .line 750
    const-string v2, "country_number"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setCountryCode(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public static setSKTCallLogType(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 557
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 573
    :cond_0
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 575
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 581
    :goto_0
    return-void

    .line 577
    :cond_1
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 578
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0
.end method

.method public static setSKTRADDialingToKoreaEnabled(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 434
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 435
    return-void
.end method

.method public static setSKTRADOutgoingCallNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "outgoingCallString"

    .prologue
    .line 414
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public static setSKTRADOutgoingCallUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "outgoingCallUri"

    .prologue
    .line 410
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    .line 411
    return-void
.end method

.method public static setSMS(Z)V
    .locals 0
    .parameter "sms"

    .prologue
    .line 917
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->smsCall:Z

    .line 918
    return-void
.end method

.method public static setSendDtmf(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 944
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    .line 945
    return-void
.end method

.method public static setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1003
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    .line 1004
    return-void
.end method

.method public static setUserInputDialingNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 419
    move-object v0, p0

    .line 420
    .local v0, inputNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 422
    const-string v1, "\\,.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v1, "\\;.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserInputDialingNumber  input num= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "set num= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    .line 427
    return-void
.end method
