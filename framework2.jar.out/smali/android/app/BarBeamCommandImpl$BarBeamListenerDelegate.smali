.class Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
.super Landroid/app/IBarBeamListener$Stub;
.source "BarBeamCommandImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamCommandImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarBeamListenerDelegate"
.end annotation


# instance fields
.field private final mListener:Landroid/app/BarBeamListener;

.field final synthetic this$0:Landroid/app/BarBeamCommandImpl;


# direct methods
.method constructor <init>(Landroid/app/BarBeamCommandImpl;Landroid/app/BarBeamListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 219
    iput-object p1, p0, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->this$0:Landroid/app/BarBeamCommandImpl;

    invoke-direct {p0}, Landroid/app/IBarBeamListener$Stub;-><init>()V

    .line 220
    iput-object p2, p0, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->mListener:Landroid/app/BarBeamListener;

    .line 221
    return-void
.end method


# virtual methods
.method public getBarBeamListener()Landroid/app/BarBeamListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->mListener:Landroid/app/BarBeamListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "test"

    return-object v0
.end method

.method public onBeamingStarted()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->mListener:Landroid/app/BarBeamListener;

    invoke-interface {v0}, Landroid/app/BarBeamListener;->onBeamingStarted()V

    .line 238
    return-void
.end method

.method public onBeamingStoppped()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->mListener:Landroid/app/BarBeamListener;

    invoke-interface {v0}, Landroid/app/BarBeamListener;->onBeamingStoppped()V

    .line 234
    return-void
.end method
