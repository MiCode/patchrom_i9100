.class Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;)V
    .locals 0
    .parameter

    .prologue
    .line 5760
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$1;->this$1:Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5763
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 5764
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$1;->this$1:Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20007

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5768
    :goto_0
    return-void

    .line 5766
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$1;->this$1:Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
