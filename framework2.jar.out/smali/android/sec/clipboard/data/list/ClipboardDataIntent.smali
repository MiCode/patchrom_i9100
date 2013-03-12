.class public Landroid/sec/clipboard/data/list/ClipboardDataIntent;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataIntent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public GetIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .parameter "format"
    .parameter "altData"

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 76
    .local v0, Result:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .line 103
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_0
    return v1

    .line 78
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2
    :goto_1
    move v1, v0

    .line 103
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_0

    .line 81
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_0
    const/4 v0, 0x0

    .line 82
    goto :goto_1

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    .line 85
    goto :goto_1

    .line 87
    :pswitch_2
    const/4 v0, 0x0

    .line 88
    goto :goto_1

    .line 90
    :pswitch_3
    const/4 v0, 0x0

    .line 91
    goto :goto_1

    .line 94
    :pswitch_4
    :try_start_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local p2
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->SetIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 98
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SetIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    .line 148
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "intent equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 150
    .local v0, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    .line 161
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 153
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-nez v4, :cond_2

    move v1, v0

    .line 154
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_2
    move-object v2, p1

    .line 156
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 158
    .local v2, trgData:Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    .line 161
    .restart local v1       #Result:I
    goto :goto_0

    .line 158
    .end local v1           #Result:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 176
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this Intent class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 167
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Intent write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 171
    return-void
.end method
