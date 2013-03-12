.class Lcom/android/internal/policy/impl/PenDetachmentAlert$1;
.super Landroid/os/Handler;
.source "PenDetachmentAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->handleAlertTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
