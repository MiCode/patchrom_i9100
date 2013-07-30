.class final Lcom/android/sec_settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .parameter "connectionState"

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    const v0, 0x7f0900a5

    goto :goto_0

    .line 45
    :pswitch_1
    const v0, 0x7f0900ab

    goto :goto_0

    .line 47
    :pswitch_2
    const v0, 0x7f0900a9

    goto :goto_0

    .line 49
    :pswitch_3
    const v0, 0x7f0900aa

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "dialog"
    .parameter "disconnectListener"
    .parameter "title"
    .parameter "message"

    .prologue
    const v2, 0x104000a

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 74
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 77
    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 70
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    .local v0, okText:Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"

    .prologue
    const/4 v4, 0x0

    .line 91
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 93
    .local v1, manager:Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, activity:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901c5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
