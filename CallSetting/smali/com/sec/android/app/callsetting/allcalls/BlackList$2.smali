.class Lcom/sec/android/app/callsetting/allcalls/BlackList$2;
.super Landroid/database/ContentObserver;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$202(Lcom/sec/android/app/callsetting/allcalls/BlackList;Z)Z

    .line 137
    return-void
.end method
