.class Landroid/speech/tts/TextToSpeech$Connection;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

.field private mService:Landroid/speech/tts/ITextToSpeechService;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 1
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Landroid/speech/tts/TextToSpeech$Connection$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$Connection$1;-><init>(Landroid/speech/tts/TextToSpeech$Connection;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$1100(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1322
    return-void
.end method

.method public getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    invoke-interface {v0}, Landroid/speech/tts/ITextToSpeechService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1288
    const-string v1, "TextToSpeech"

    const-string v2, "Connected to TTS Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1290
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 1294
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #setter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v1, p0}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    .line 1295
    invoke-static {p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    :try_start_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    invoke-interface {v1, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 1298
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    #calls: Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V
    invoke-static {v1, v3}, Landroid/speech/tts/TextToSpeech;->access$1000(Landroid/speech/tts/TextToSpeech;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1303
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1304
    return-void

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "TextToSpeech"

    const-string v3, "Error connecting to service, setCallback() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v3, -0x1

    #calls: Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V
    invoke-static {v1, v3}, Landroid/speech/tts/TextToSpeech;->access$1000(Landroid/speech/tts/TextToSpeech;I)V

    goto :goto_0

    .line 1303
    .end local v0           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1312
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    .line 1314
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1315
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    #setter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v0, v2}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    .line 1317
    :cond_0
    monitor-exit v1

    .line 1318
    return-void

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter "method"
    .parameter "reconnect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    .prologue
    .line 1326
    .local p1, action:Landroid/speech/tts/TextToSpeech$Action;,"Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, errorResult:Ljava/lang/Object;,"TR;"
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :try_start_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    if-nez v1, :cond_1

    .line 1328
    const-string v1, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: not connected to TTS engine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    monitor-exit v2

    .line 1339
    .end local p2           #errorResult:Ljava/lang/Object;,"TR;"
    :cond_0
    :goto_0
    return-object p2

    .line 1331
    .restart local p2       #errorResult:Ljava/lang/Object;,"TR;"
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    invoke-interface {p1, v1}, Landroid/speech/tts/TextToSpeech$Action;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2

    move-object p2, v1

    goto :goto_0

    .line 1332
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    if-eqz p4, :cond_0

    .line 1336
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 1337
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #calls: Landroid/speech/tts/TextToSpeech;->initTts()I
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$1200(Landroid/speech/tts/TextToSpeech;)I

    goto :goto_0
.end method
