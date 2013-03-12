.class public Landroid/sec/clipboard/data/list/ClipboardDataText;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataText.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public GetText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 73
    .local v0, Result:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 99
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_0
    return v1

    .line 75
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2
    :goto_1
    move v1, v0

    .line 99
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_0

    .line 78
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 79
    goto :goto_1

    .line 81
    .restart local p2
    :pswitch_1
    const/4 v0, 0x0

    .line 82
    goto :goto_1

    .line 85
    :pswitch_2
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 86
    goto :goto_1

    .line 90
    .restart local p2
    :pswitch_3
    const/4 v0, 0x0

    .line 91
    goto :goto_1

    .line 94
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SetText(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 143
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "text equals"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 156
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 148
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-nez v3, :cond_2

    move v1, v0

    .line 149
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_2
    move-object v2, p1

    .line 151
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 153
    .local v2, trgData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 156
    .restart local v1       #Result:I
    goto :goto_0

    .line 153
    .end local v1           #Result:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 171
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this Text class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 162
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "text write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
