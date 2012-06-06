.class Lcom/android/OriginalSettings/DataUsageSummary$8;
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
    .line 1092
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 1097
    return-void
.end method
