.class Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$2;
.super Ljava/lang/Object;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->access$202(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;Z)Z

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;->access$202(Lcom/android/OriginalSettings/bluetooth/BluetoothPermissionActivity;Z)Z

    goto :goto_0
.end method
