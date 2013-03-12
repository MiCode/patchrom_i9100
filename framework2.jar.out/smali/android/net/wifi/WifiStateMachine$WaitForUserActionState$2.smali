.class Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$2;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 5777
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$2;->this$1:Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 5780
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$2;->this$1:Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5781
    return-void
.end method
