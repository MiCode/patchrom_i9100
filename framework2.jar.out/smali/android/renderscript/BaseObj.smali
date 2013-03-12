.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:I

.field private mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->validate()V

    .line 30
    iput-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 33
    return-void
.end method


# virtual methods
.method checkValid()V
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 138
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nObjDestroy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 174
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 177
    check-cast v0, Landroid/renderscript/BaseObj;

    .line 178
    .local v0, b:Landroid/renderscript/BaseObj;
    iget v3, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v4, v0, Landroid/renderscript/BaseObj;->mID:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 115
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nObjDestroy(I)V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 124
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 125
    return-void
.end method

.method getID(Landroid/renderscript/RenderScript;)I
    .locals 2
    .parameter "rs"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 53
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-eq p1, v0, :cond_2

    .line 60
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return v0
.end method

.method setID(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 36
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal Error, reset of object ID."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "setName requires a string of non-zero length."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 89
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "setName does not accept a zero length string."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 93
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "setName object already has a name."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_2
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, bytes:[B
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v3, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v2, v3, v0}, Landroid/renderscript/RenderScript;->nAssignName(I[B)V

    .line 100
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 101
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method updateFromNative()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 147
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    .line 148
    return-void
.end method
