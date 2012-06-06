.class Lcom/android/OriginalSettings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1075
    .local v0, restrictBackground:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->hasLimitedNetworks()Z
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1700(Lcom/android/OriginalSettings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1089
    :goto_1
    return-void

    .end local v0           #restrictBackground:Z
    :cond_0
    move v0, v1

    .line 1073
    goto :goto_0

    .line 1084
    .restart local v0       #restrictBackground:Z
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_1

    .line 1087
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto :goto_1
.end method
