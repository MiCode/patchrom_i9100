.class Lcom/android/server/wm/WindowToken;
.super Ljava/lang/Object;
.source "WindowToken.java"


# instance fields
.field appWindowMode:I

.field appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field final explicit:Z

.field hasVisible:Z

.field hidden:Z

.field paused:Z

.field sendingToBottom:Z

.field final service:Lcom/android/server/wm/WindowManagerService;

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToHide:Z

.field waitingToShow:Z

.field final windowType:I

.field final windows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V
    .locals 1
    .parameter "_service"
    .parameter "_token"
    .parameter "type"
    .parameter "_explicit"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 86
    const/high16 v0, 0x100

    iput v0, p0, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 92
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 93
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->explicit:Z

    .line 94
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 100
    const-string v0, " hidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 101
    const-string v0, " hasVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v0, " appWindowMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 106
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "waitingToShow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 108
    const-string v0, " waitingToHide="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 109
    const-string v0, " sendingToBottom="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 111
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 122
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method
