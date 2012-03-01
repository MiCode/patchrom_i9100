.class public Lcom/android/phone/RoamingAutoDialOption;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingAutoDialOption.java"


# instance fields
.field final app:Lcom/android/phone/PhoneApp;

.field private callType:I

.field private mPhoneApp:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialOption;->app:Lcom/android/phone/PhoneApp;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RoamingAutoDialOption;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialOption;->app:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingAutoDialOption;->setPhoneApp(Lcom/android/internal/telephony/Phone;)V

    .line 41
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 42
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 43
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0e03ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 44
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 45
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0e03ae

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 46
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v4, 0x7f0e03af

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.phone.extra.calltype"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    .line 50
    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$1;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->setupAlert()V

    .line 70
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->finish()V

    .line 75
    return-void
.end method

.method setPhoneApp(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialOption;->mPhoneApp:Lcom/android/internal/telephony/Phone;

    .line 79
    return-void
.end method
