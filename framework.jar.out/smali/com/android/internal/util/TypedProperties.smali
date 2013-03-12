.class public Lcom/android/internal/util/TypedProperties;
.super Ljava/util/HashMap;
.source "TypedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TypedProperties$TypeException;,
        Lcom/android/internal/util/TypedProperties$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final NULL_STRING:Ljava/lang/String; = null

.field public static final STRING_NOT_SET:I = -0x1

.field public static final STRING_NULL:I = 0x0

.field public static final STRING_SET:I = 0x1

.field public static final STRING_TYPE_MISMATCH:I = -0x2

.field static final TYPE_BOOLEAN:I = 0x5a

.field static final TYPE_BYTE:I = 0x149

.field static final TYPE_DOUBLE:I = 0x846

.field static final TYPE_ERROR:I = -0x1

.field static final TYPE_FLOAT:I = 0x446

.field static final TYPE_INT:I = 0x449

.field static final TYPE_LONG:I = 0x849

.field static final TYPE_SHORT:I = 0x249

.field static final TYPE_STRING:I = 0x734c

.field static final TYPE_UNSET:I = 0x78


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/String;

    const-string v1, "<TypedProperties:NULL_STRING>"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 344
    return-void
.end method

.method static initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;
    .locals 8
    .parameter "r"

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x1

    .line 39
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 42
    .local v0, st:Ljava/io/StreamTokenizer;
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 50
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 51
    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 52
    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 53
    const/16 v1, 0x5f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 54
    const/16 v1, 0x24

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 55
    const/16 v1, 0x2e

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 56
    const/16 v1, 0x2d

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 57
    const/16 v1, 0x2b

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 60
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 63
    invoke-virtual {v0, v7, v7}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 64
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 65
    invoke-virtual {v0, v5, v5}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 66
    invoke-virtual {v0, v6, v6}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 67
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 70
    invoke-virtual {v0, v3}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 71
    invoke-virtual {v0, v3}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 73
    return-object v0
.end method

.method static interpretType(Ljava/lang/String;)I
    .locals 1
    .parameter "typeName"

    .prologue
    .line 111
    const-string/jumbo v0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/16 v0, 0x78

    .line 130
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const/16 v0, 0x5a

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const/16 v0, 0x149

    goto :goto_0

    .line 117
    :cond_2
    const-string/jumbo v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    const/16 v0, 0x249

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const/16 v0, 0x449

    goto :goto_0

    .line 121
    :cond_4
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    const/16 v0, 0x849

    goto :goto_0

    .line 123
    :cond_5
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    const/16 v0, 0x446

    goto :goto_0

    .line 125
    :cond_6
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    const/16 v0, 0x846

    goto :goto_0

    .line 127
    :cond_7
    const-string v0, "String"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    const/16 v0, 0x734c

    goto :goto_0

    .line 130
    :cond_8
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static parse(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 14
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/TypedProperties$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v13, 0x0

    const/16 v12, 0x78

    const/4 v11, -0x1

    const/4 v10, -0x3

    .line 142
    invoke-static {p0}, Lcom/android/internal/util/TypedProperties;->initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;

    move-result-object v4

    .line 147
    .local v4, st:Ljava/io/StreamTokenizer;
    const-string v0, "[a-zA-Z_$][0-9a-zA-Z_$]*"

    .line 148
    .local v0, identifierPattern:Ljava/lang/String;
    const-string v8, "([a-zA-Z_$][0-9a-zA-Z_$]*\\.)*[a-zA-Z_$][0-9a-zA-Z_$]*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 156
    .local v3, propertyNamePattern:Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 157
    .local v5, token:I
    if-ne v5, v11, :cond_1

    .line 222
    return-void

    .line 160
    :cond_1
    if-eq v5, v10, :cond_2

    .line 161
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "type name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 163
    :cond_2
    iget-object v8, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/TypedProperties;->interpretType(Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, type:I
    if-ne v6, v11, :cond_3

    .line 165
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "valid type name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 167
    :cond_3
    iput-object v13, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 169
    if-ne v6, v12, :cond_4

    .line 171
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 172
    const/16 v8, 0x28

    if-eq v5, v8, :cond_4

    .line 173
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v9, "\'(\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 178
    :cond_4
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 179
    if-eq v5, v10, :cond_5

    .line 180
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "property name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 182
    :cond_5
    iget-object v2, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 183
    .local v2, propertyName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    .line 184
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "valid property name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 186
    :cond_6
    iput-object v13, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 188
    if-ne v6, v12, :cond_8

    .line 190
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 191
    const/16 v8, 0x29

    if-eq v5, v8, :cond_7

    .line 192
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v9, "\')\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 194
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_0
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 218
    const/16 v8, 0x3b

    if-eq v5, v8, :cond_0

    .line 219
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v9, "\';\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 197
    :cond_8
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 198
    const/16 v8, 0x3d

    if-eq v5, v8, :cond_9

    .line 199
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v9, "\'=\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 203
    :cond_9
    invoke-static {v4, v6}, Lcom/android/internal/util/TypedProperties;->parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;

    move-result-object v7

    .line 204
    .local v7, value:Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, oldValue:Ljava/lang/Object;
    if-eqz v1, :cond_a

    .line 208
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_a

    .line 209
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v9, "(property previously declared as a different type)"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    .line 213
    :cond_a
    invoke-interface {p1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;
    .locals 10
    .parameter "st"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x3

    .line 234
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    .line 236
    .local v3, token:I
    const/16 v7, 0x5a

    if-ne p1, v7, :cond_3

    .line 237
    if-eq v3, v9, :cond_0

    .line 238
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "boolean constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 241
    :cond_0
    const-string/jumbo v7, "true"

    iget-object v8, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 330
    :goto_0
    return-object v7

    .line 243
    :cond_1
    const-string v7, "false"

    iget-object v8, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 247
    :cond_2
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "boolean constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 248
    :cond_3
    and-int/lit16 v7, p1, 0xff

    const/16 v8, 0x49

    if-ne v7, v8, :cond_d

    .line 249
    if-eq v3, v9, :cond_4

    .line 250
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "integer constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 259
    :cond_4
    :try_start_0
    iget-object v7, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 265
    .local v4, value:J
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v6, v7, 0xff

    .line 266
    .local v6, width:I
    packed-switch v6, :pswitch_data_0

    .line 288
    :pswitch_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internal error; unexpected integer type width "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 260
    .end local v4           #value:J
    .end local v6           #width:I
    :catch_0
    move-exception v2

    .line 261
    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "integer constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 268
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v4       #value:J
    .restart local v6       #width:I
    :pswitch_1
    const-wide/16 v7, -0x80

    cmp-long v7, v4, v7

    if-ltz v7, :cond_5

    const-wide/16 v7, 0x7f

    cmp-long v7, v4, v7

    if-lez v7, :cond_6

    .line 269
    :cond_5
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "8-bit integer constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 271
    :cond_6
    new-instance v7, Ljava/lang/Byte;

    long-to-int v8, v4

    int-to-byte v8, v8

    invoke-direct {v7, v8}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    .line 273
    :pswitch_2
    const-wide/16 v7, -0x8000

    cmp-long v7, v4, v7

    if-ltz v7, :cond_7

    const-wide/16 v7, 0x7fff

    cmp-long v7, v4, v7

    if-lez v7, :cond_8

    .line 274
    :cond_7
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "16-bit integer constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 276
    :cond_8
    new-instance v7, Ljava/lang/Short;

    long-to-int v8, v4

    int-to-short v8, v8

    invoke-direct {v7, v8}, Ljava/lang/Short;-><init>(S)V

    goto/16 :goto_0

    .line 278
    :pswitch_3
    const-wide/32 v7, -0x80000000

    cmp-long v7, v4, v7

    if-ltz v7, :cond_9

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-lez v7, :cond_a

    .line 279
    :cond_9
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "32-bit integer constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 281
    :cond_a
    new-instance v7, Ljava/lang/Integer;

    long-to-int v8, v4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 283
    :pswitch_4
    const-wide/high16 v7, -0x8000

    cmp-long v7, v4, v7

    if-ltz v7, :cond_b

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v4, v7

    if-lez v7, :cond_c

    .line 284
    :cond_b
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "64-bit integer constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 286
    :cond_c
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_0

    .line 291
    .end local v4           #value:J
    .end local v6           #width:I
    :cond_d
    and-int/lit16 v7, p1, 0xff

    const/16 v8, 0x46

    if-ne v7, v8, :cond_12

    .line 292
    if-eq v3, v9, :cond_e

    .line 293
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "float constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 306
    :cond_e
    :try_start_1
    iget-object v7, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 312
    .local v4, value:D
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x4

    if-ne v7, v8, :cond_11

    .line 314
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 315
    .local v0, absValue:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-eqz v7, :cond_10

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_10

    .line 316
    const-wide/high16 v7, 0x36a0

    cmpg-double v7, v0, v7

    if-ltz v7, :cond_f

    const-wide v7, 0x47efffffe0000000L

    cmpl-double v7, v0, v7

    if-lez v7, :cond_10

    .line 317
    :cond_f
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "32-bit float constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 307
    .end local v0           #absValue:D
    .end local v4           #value:D
    :catch_1
    move-exception v2

    .line 308
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "float constant"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 320
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #absValue:D
    .restart local v4       #value:D
    :cond_10
    new-instance v7, Ljava/lang/Float;

    double-to-float v8, v4

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 323
    .end local v0           #absValue:D
    :cond_11
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .line 325
    .end local v4           #value:D
    :cond_12
    const/16 v7, 0x734c

    if-ne p1, v7, :cond_15

    .line 327
    const/16 v7, 0x22

    if-ne v3, v7, :cond_13

    .line 328
    iget-object v7, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    goto/16 :goto_0

    .line 329
    :cond_13
    if-ne v3, v9, :cond_14

    const-string/jumbo v7, "null"

    iget-object v8, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 330
    sget-object v7, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    goto/16 :goto_0

    .line 332
    :cond_14
    new-instance v7, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v8, "double-quoted string or \'null\'"

    invoke-direct {v7, p0, v8}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v7

    .line 335
    :cond_15
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internal error; unknown type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 403
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, value:Ljava/lang/Object;
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 435
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 440
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 439
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 440
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 442
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "boolean"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .parameter "property"

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 455
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 460
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 459
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 460
    check-cast v0, Ljava/lang/Byte;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0

    .line 462
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "byte"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "property"

    .prologue
    .line 672
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 555
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 560
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return-wide p2

    .line 559
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 560
    check-cast v0, Ljava/lang/Double;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0

    .line 562
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "double"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "property"

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 535
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 540
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 539
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 540
    check-cast v0, Ljava/lang/Float;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 542
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "float"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "property"

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 495
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 496
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 500
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 499
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 500
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 502
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "int"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "property"

    .prologue
    .line 648
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 515
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 520
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return-wide p2

    .line 519
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 520
    check-cast v0, Ljava/lang/Long;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0

    .line 522
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "long"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .parameter "property"

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 475
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 480
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 479
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 480
    check-cast v0, Ljava/lang/Short;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_0

    .line 482
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "short"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 684
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "property"
    .parameter "def"

    .prologue
    .line 575
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 576
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 582
    .end local v0           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return-object p2

    .line 579
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 580
    const/4 p2, 0x0

    goto :goto_0

    .line 581
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 582
    check-cast v0, Ljava/lang/String;

    .end local v0           #value:Ljava/lang/Object;
    move-object p2, v0

    goto :goto_0

    .line 584
    .restart local v0       #value:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "string"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getStringInfo(Ljava/lang/String;)I
    .locals 2
    .parameter "property"

    .prologue
    .line 703
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 704
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 705
    const/4 v1, -0x1

    .line 712
    :goto_0
    return v1

    .line 707
    :cond_0
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 708
    const/4 v1, 0x0

    goto :goto_0

    .line 709
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 710
    const/4 v1, 0x1

    goto :goto_0

    .line 712
    :cond_2
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public load(Ljava/io/Reader;)V
    .locals 0
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {p1, p0}, Lcom/android/internal/util/TypedProperties;->parse(Ljava/io/Reader;Ljava/util/Map;)V

    .line 399
    return-void
.end method
