.class Lcom/android/sec_settings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/sec_settings/RadioInfo$12;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 868
    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo$12;->this$0:Lcom/android/sec_settings/RadioInfo;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/sec_settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 870
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo$12;->this$0:Lcom/android/sec_settings/RadioInfo;

    #getter for: Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/sec_settings/RadioInfo;->access$3000(Lcom/android/sec_settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 871
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 882
    :goto_0
    :pswitch_0
    return v4

    .line 873
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 876
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
