.class Lcom/android/settings/wifi/PrioritySettingDialog$1;
.super Ljava/lang/Object;
.source "PrioritySettingDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/PrioritySettingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/PrioritySettingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/PrioritySettingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/wifi/PrioritySettingDialog$1;->this$0:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog$1;->this$0:Lcom/android/settings/wifi/PrioritySettingDialog;

    #getter for: Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->access$000(Lcom/android/settings/wifi/PrioritySettingDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902af

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
