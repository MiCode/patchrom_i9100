.class Lcom/android/sec_settings/DataUsageSummary$7;
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
    .line 1276
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$7;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1279
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$7;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary;->access$900(Lcom/android/sec_settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1280
    .local v0, confirmAtBoot:Z
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$7;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/sec_settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data_question"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1286
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$7;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary;->access$900(Lcom/android/sec_settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1287
    return-void

    .end local v0           #confirmAtBoot:Z
    :cond_0
    move v0, v2

    .line 1279
    goto :goto_0

    .restart local v0       #confirmAtBoot:Z
    :cond_1
    move v1, v2

    .line 1280
    goto :goto_1
.end method
