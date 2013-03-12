.class public Lcom/android/server/LocationManagerService$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlacklistObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/android/server/LocationManagerService$BlacklistObserver;->this$0:Lcom/android/server/LocationManagerService;

    .line 2491
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2492
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/server/LocationManagerService$BlacklistObserver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->reloadBlacklist()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)V

    .line 2496
    return-void
.end method
