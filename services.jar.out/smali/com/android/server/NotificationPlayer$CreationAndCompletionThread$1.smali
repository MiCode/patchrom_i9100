.class Lcom/android/server/NotificationPlayer$CreationAndCompletionThread$1;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread$1;->this$1:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread$1;->this$1:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    iget-object v0, v0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #calls: Lcom/android/server/NotificationPlayer;->register()V
    invoke-static {v0}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)V

    .line 114
    return-void
.end method
