.class Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090261

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/sec_settings/wifi/WpsDialog;->updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/wifi/WpsDialog;->access$100(Lcom/android/sec_settings/wifi/WpsDialog;Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090264

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, msg:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    #calls: Lcom/android/sec_settings/wifi/WpsDialog;->updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/sec_settings/wifi/WpsDialog;->access$100(Lcom/android/sec_settings/wifi/WpsDialog;Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 129
    return-void

    .line 113
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090266

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090263

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "pin"

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090260

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/sec_settings/wifi/WpsDialog;->updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/wifi/WpsDialog;->access$100(Lcom/android/sec_settings/wifi/WpsDialog;Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/sec_settings/wifi/WpsDialog;

    #getter for: Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/sec_settings/wifi/WpsDialog;->access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09025f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/sec_settings/wifi/WpsDialog;->updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/wifi/WpsDialog;->access$100(Lcom/android/sec_settings/wifi/WpsDialog;Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method
