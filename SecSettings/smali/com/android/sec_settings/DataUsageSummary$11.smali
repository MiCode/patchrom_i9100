.class Lcom/android/sec_settings/DataUsageSummary$11;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$11;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$11;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/sec_settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$11;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$11;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$1600(Lcom/android/sec_settings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
