.class public Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHTMLFragment.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFirstImg:Landroid/graphics/Bitmap;

.field private mValue:Ljava/lang/String;

.field private mValuePlainText:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 63
    const-string v0, "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public GetHTMLFragment()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetHTMLUrl()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 80
    .local v0, Result:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 111
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_0
    return v1

    .line 83
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2
    :goto_1
    move v1, v0

    .line 111
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_0

    .line 88
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 90
    goto :goto_1

    .line 92
    .restart local p2
    :pswitch_1
    const/4 v0, 0x0

    .line 93
    goto :goto_1

    .line 97
    :pswitch_2
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 98
    goto :goto_1

    .line 102
    .restart local p2
    :pswitch_3
    const/4 v0, 0x0

    .line 103
    goto :goto_1

    .line 106
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 143
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 149
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 155
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"
    .parameter "HtmlUrl"

    .prologue
    .line 167
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "SetHTMLFragment( CharSequence text , CharSequence HtmlUrl )"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 170
    :cond_1
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 172
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 173
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 178
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlUrl ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 184
    :cond_5
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 187
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_6
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 193
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 121
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 300
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "html equals"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 312
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 305
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-nez v3, :cond_2

    move v1, v0

    .line 306
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_2
    move-object v2, p1

    .line 308
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 310
    .local v2, trgData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 312
    .restart local v1       #Result:I
    goto :goto_0

    .line 310
    .end local v1           #Result:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x7

    .line 222
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 223
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    .line 226
    .local v0, Result:Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_2

    .line 228
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getFirstImage : Data is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copied HTML contents is ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    const-string v2, ""

    .line 236
    .local v2, sFileName:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 244
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_5

    .line 246
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getFirstImage : FileName is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFirstImage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sFileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_a

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    .line 255
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadSimpleBitmap : Webpath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_7
    :try_start_1
    invoke-static {v2, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 279
    :cond_8
    :goto_2
    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 259
    :catch_1
    move-exception v1

    .line 260
    .restart local v1       #e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFirstImage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_9
    const/4 v0, 0x0

    .line 262
    goto :goto_2

    .line 265
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_c

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, substring:Ljava/lang/String;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_b
    invoke-static {v3, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    goto :goto_2

    .line 274
    .end local v3           #substring:Ljava/lang/String;
    :cond_c
    invoke-static {v2, p2, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFilePathBitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 328
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 329
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 330
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this HTML class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 318
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "html write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 323
    return-void
.end method
