.class Lcom/android/sec_settings/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$1;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 305
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$1;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/sec_settings/DataUsageSummary$1;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/sec_settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #calls: Lcom/android/sec_settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/sec_settings/DataUsageSummary;->access$000(Lcom/android/sec_settings/DataUsageSummary;Z)V

    .line 306
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
