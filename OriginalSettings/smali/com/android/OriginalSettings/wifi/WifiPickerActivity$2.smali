.class Lcom/android/settings/wifi/WifiPickerActivity$2;
.super Ljava/lang/Object;
.source "WifiPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerActivity$2;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity$2;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiPickerActivity;->setResult(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity$2;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPickerActivity;->finish()V

    .line 92
    return-void
.end method
