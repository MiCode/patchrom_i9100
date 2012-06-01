.class public final Landroid/webkit/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CookieManager$CookieComparator;,
        Landroid/webkit/CookieManager$Cookie;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String; = null

.field private static final COMMA:C = ','

.field private static final COMPARATOR:Landroid/webkit/CookieManager$CookieComparator; = null

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

#the value of this static final field might be set in the static constructor
.field private static final HTTP_ONLY_LENGTH:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final MAX_COOKIE_COUNT_PER_BASE_DOMAIN:I = 0x32

.field private static final MAX_COOKIE_LENGTH:I = 0x1000

.field private static final MAX_DOMAIN_COUNT:I = 0xc8

.field private static final MAX_RAM_COOKIES_COUNT:I = 0x3e8

.field private static final MAX_RAM_DOMAIN_COUNT:I = 0xf

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

#the value of this static final field might be set in the static constructor
.field private static final SECURE_LENGTH:I = 0x0

.field private static final SEMICOLON:C = ';'

.field private static final WHITE_SPACE:C = ' '

.field private static sRef:Landroid/webkit/CookieManager;


# instance fields
.field private mAcceptCookie:Z

.field private mCookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingCookieOperations:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-class v0, Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/CookieManager;->$assertionsDisabled:Z

    .line 83
    const-string/jumbo v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    .line 85
    const-string v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    .line 116
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ac"

    aput-object v3, v0, v2

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 121
    sget-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 214
    new-instance v0, Landroid/webkit/CookieManager$CookieComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager$CookieComparator;-><init>(Landroid/webkit/CookieManager$1;)V

    sput-object v0, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    const/high16 v2, 0x3f40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    .line 108
    iput-boolean v3, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    .line 250
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Landroid/webkit/CookieManager;->nativeRemoveSessionCookie()V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/CookieManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/webkit/CookieManager;->signalCookieOperationsComplete()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/CookieManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object p1
.end method

.method public static allowFileSchemeCookies()Z
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Landroid/webkit/CookieManager;->nativeAcceptFileSchemeCookies()Z

    move-result v0

    .line 760
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "host"

    .prologue
    const/16 v3, 0x2e

    .line 957
    const/4 v2, 0x0

    .line 958
    .local v2, startIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 959
    .local v1, nextIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 960
    .local v0, lastIndex:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 961
    add-int/lit8 v2, v1, 0x1

    .line 962
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 964
    :cond_0
    if-lez v2, :cond_1

    .line 965
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 967
    .end local p1
    :cond_1
    return-object p1
.end method

.method private getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/16 v4, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 899
    invoke-virtual {p1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 909
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 910
    .local v1, ret:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 911
    invoke-virtual {p1}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 913
    aget-object v3, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 914
    .local v0, index:I
    if-ne v0, v7, :cond_2

    .line 915
    invoke-virtual {p1}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    const-string/jumbo v3, "localhost"

    aput-object v3, v1, v5

    .line 926
    :cond_0
    :goto_0
    aget-object v3, v1, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    move-object v1, v2

    .line 947
    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 921
    .restart local v0       #index:I
    .restart local v1       #ret:[Ljava/lang/String;
    :cond_2
    aget-object v3, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    goto :goto_0

    .line 940
    :cond_3
    aget-object v2, v1, v6

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 941
    if-eq v0, v7, :cond_1

    .line 942
    aget-object v2, v1, v6

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto :goto_1

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .line 947
    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManager;
    .locals 2

    .prologue
    .line 265
    const-class v1, Landroid/webkit/CookieManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Landroid/webkit/CookieManager;

    invoke-direct {v0}, Landroid/webkit/CookieManager;-><init>()V

    sput-object v0, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    .line 268
    :cond_0
    sget-object v0, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeAcceptCookie()Z
.end method

.method private static native nativeAcceptFileSchemeCookies()Z
.end method

.method private static native nativeFlushCookieStore()V
.end method

.method private static native nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native nativeHasCookies(Z)Z
.end method

.method private static native nativeRemoveAllCookie()V
.end method

.method private static native nativeRemoveExpiredCookie()V
.end method

.method private static native nativeRemoveSessionCookie()V
.end method

.method private static native nativeSetAcceptCookie(Z)V
.end method

.method private static native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private static native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "host"
    .parameter "path"
    .parameter "cookieString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v15, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/4 v10, 0x0

    .line 990
    .local v10, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 992
    .local v13, length:I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 995
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    if-ltz v10, :cond_1

    if-lt v10, v13, :cond_2

    .line 1224
    :cond_1
    return-object v15

    .line 1000
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1001
    add-int/lit8 v10, v10, 0x1

    .line 1002
    goto :goto_0

    .line 1014
    :cond_3
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1015
    .local v17, semicolonIndex:I
    const/16 v20, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1016
    .local v7, equalIndex:I
    new-instance v5, Landroid/webkit/CookieManager$Cookie;

    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Landroid/webkit/CookieManager$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move/from16 v0, v17

    if-lt v0, v7, :cond_5

    :cond_4
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_9

    .line 1027
    :cond_5
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1028
    move/from16 v17, v13

    .line 1030
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 1031
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 1064
    :goto_1
    move/from16 v10, v17

    .line 1067
    :cond_7
    :goto_2
    if-ltz v10, :cond_8

    if-lt v10, v13, :cond_f

    .line 1220
    :cond_8
    :goto_3
    if-eqz v5, :cond_0

    iget-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1221
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1033
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 1036
    add-int/lit8 v20, v13, -0x1

    move/from16 v0, v20

    if-ge v7, v0, :cond_a

    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1038
    const/16 v20, 0x22

    add-int/lit8 v21, v7, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1039
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_1

    .line 1046
    :cond_a
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1047
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1048
    move/from16 v17, v13

    .line 1050
    :cond_b
    sub-int v20, v17, v7

    const/16 v21, 0x1000

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 1052
    add-int/lit8 v20, v7, 0x1

    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto :goto_1

    .line 1054
    :cond_c
    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    move/from16 v0, v17

    if-ge v0, v7, :cond_e

    .line 1057
    :cond_d
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 1059
    :cond_e
    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 1072
    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1074
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 1075
    goto/16 :goto_2

    .line 1079
    :cond_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 1080
    add-int/lit8 v10, v10, 0x1

    .line 1081
    goto/16 :goto_3

    .line 1086
    :cond_12
    sub-int v20, v13, v10

    sget v21, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13

    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v20, v20, v10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "secure"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1089
    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v10, v10, v20

    .line 1090
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 1091
    if-eq v10, v13, :cond_8

    .line 1092
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1098
    :cond_13
    sub-int v20, v13, v10

    sget v21, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_14

    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v20, v20, v10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "httponly"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1102
    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v10, v10, v20

    .line 1103
    if-eq v10, v13, :cond_8

    .line 1104
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1108
    :cond_14
    const/16 v20, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1109
    if-lez v7, :cond_23

    .line 1110
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 1111
    .local v14, name:Ljava/lang/String;
    add-int/lit8 v19, v7, 0x1

    .line 1112
    .local v19, valueIndex:I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v13, :cond_15

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 1113
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1116
    :cond_15
    const-string v20, "expires"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 1117
    const/16 v20, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1122
    .local v3, comaIndex:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_16

    sub-int v20, v3, v19

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    .line 1124
    add-int/lit8 v10, v3, 0x1

    .line 1127
    .end local v3           #comaIndex:I
    :cond_16
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1128
    const/16 v20, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1129
    .local v4, commaIndex:I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_18

    .line 1130
    move v10, v13

    .line 1138
    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1141
    .local v18, value:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_17

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 1142
    const/16 v20, 0x22

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 1143
    .local v6, endQuote:I
    if-lez v6, :cond_17

    .line 1144
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1147
    .end local v6           #endQuote:I
    :cond_17
    const-string v20, "expires"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 1149
    :try_start_0
    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1150
    :catch_0
    move-exception v8

    .line 1151
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "illegal format for expires: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1131
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .end local v18           #value:Ljava/lang/String;
    :cond_18
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1132
    move v10, v4

    goto :goto_5

    .line 1133
    :cond_19
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_1a

    .line 1134
    move/from16 v10, v17

    goto/16 :goto_5

    .line 1136
    :cond_1a
    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_5

    .line 1154
    .restart local v18       #value:Ljava/lang/String;
    :cond_1b
    const-string/jumbo v20, "max-age"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 1156
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    mul-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1158
    :catch_1
    move-exception v8

    .line 1159
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "illegal format for max-age: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1162
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :cond_1c
    const-string/jumbo v20, "path"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 1164
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    .line 1165
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 1167
    :cond_1d
    const-string v20, "domain"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1168
    const/16 v20, 0x2e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1169
    .local v11, lastPeriod:I
    if-nez v11, :cond_1e

    .line 1171
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1175
    :cond_1e
    add-int/lit8 v20, v11, 0x1

    :try_start_2
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1177
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 1179
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1182
    :catch_2
    move-exception v20

    .line 1185
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 1186
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    .line 1188
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1189
    add-int/lit8 v11, v11, 0x1

    .line 1191
    :cond_1f
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_22

    .line 1192
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    .line 1193
    .local v12, len:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1194
    .local v9, hostLen:I
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    if-le v9, v0, :cond_20

    sub-int v20, v9, v12

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_20

    .line 1197
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1201
    :cond_20
    add-int/lit8 v20, v11, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_21

    const/16 v20, 0x6

    move/from16 v0, v20

    if-lt v12, v0, :cond_21

    const/16 v20, 0x8

    move/from16 v0, v20

    if-gt v12, v0, :cond_21

    .line 1203
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1204
    .local v16, s:Ljava/lang/String;
    sget-object v20, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v20

    if-ltz v20, :cond_21

    .line 1205
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1209
    .end local v16           #s:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1212
    .end local v9           #hostLen:I
    .end local v12           #len:I
    :cond_22
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 1217
    .end local v4           #commaIndex:I
    .end local v11           #lastPeriod:I
    .end local v14           #name:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #valueIndex:I
    :cond_23
    move v10, v13

    goto/16 :goto_2
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .locals 1
    .parameter "accept"

    .prologue
    .line 774
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-static {p0}, Landroid/webkit/CookieManager;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 777
    :cond_0
    return-void
.end method

.method private declared-synchronized signalCookieOperationsComplete()V
    .locals 2

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    .line 616
    sget-boolean v0, Landroid/webkit/CookieManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 617
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized signalCookieOperationsStart()V
    .locals 1

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Landroid/webkit/CookieManager;->nativeAcceptCookie()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 303
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized deleteACookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 4
    .parameter "cookie"

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    iget-byte v2, p1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 811
    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 813
    .local v1, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 810
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized deleteLRUDomain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x3e8

    const/16 v12, 0xf

    .line 840
    monitor-enter p0

    const/4 v2, 0x0

    .line 841
    .local v2, count:I
    const/4 v0, 0x0

    .line 842
    .local v0, byteCount:I
    :try_start_0
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    .line 844
    .local v7, mapSize:I
    if-ge v7, v12, :cond_0

    .line 845
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 846
    .local v1, cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 847
    .local v6, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    if-ge v2, v13, :cond_0

    .line 848
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 865
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v2, v11

    .line 867
    goto :goto_0

    .line 870
    .end local v1           #cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v8, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-ge v7, v12, :cond_1

    if-lt v2, v13, :cond_2

    .line 876
    :cond_1
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 877
    .local v4, domains:[Ljava/lang/Object;
    div-int/lit8 v11, v7, 0xa

    add-int/lit8 v9, v11, 0x1

    .local v9, toGo:I
    move v10, v9

    .line 878
    .end local v9           #toGo:I
    .local v10, toGo:I
    :goto_1
    add-int/lit8 v9, v10, -0x1

    .end local v10           #toGo:I
    .restart local v9       #toGo:I
    if-lez v10, :cond_2

    .line 879
    aget-object v11, v4, v9

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, domain:Ljava/lang/String;
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 885
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v9

    .line 886
    .end local v9           #toGo:I
    .restart local v10       #toGo:I
    goto :goto_1

    .line 888
    .end local v3           #domain:Ljava/lang/String;
    .end local v4           #domains:[Ljava/lang/Object;
    .end local v10           #toGo:I
    :cond_2
    monitor-exit p0

    return-object v8

    .line 840
    .end local v7           #mapSize:I
    .end local v8           #retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method flushCookieStore()V
    .locals 1

    .prologue
    .line 748
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-static {}, Landroid/webkit/CookieManager;->nativeFlushCookieStore()V

    .line 751
    :cond_0
    return-void
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .locals 15
    .parameter "uri"

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/webkit/CookieManager;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 594
    :goto_0
    monitor-exit p0

    return-object v11

    .line 530
    :cond_0
    :try_start_1
    iget-boolean v11, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    if-eqz v11, :cond_1

    if-nez p1, :cond_2

    .line 531
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 534
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, hostAndPath:[Ljava/lang/String;
    if-nez v4, :cond_3

    .line 536
    const/4 v11, 0x0

    goto :goto_0

    .line 539
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-direct {p0, v11}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 541
    .local v2, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v2, :cond_4

    .line 542
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 544
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 548
    .local v6, now:J
    const-string v11, "https"

    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 549
    .local v9, secure:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 551
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    new-instance v3, Ljava/util/TreeSet;

    sget-object v11, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    invoke-direct {v3, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 552
    .local v3, cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 553
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/CookieManager$Cookie;

    .line 554
    .local v1, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v1, v11}, Landroid/webkit/CookieManager$Cookie;->domainMatch(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v1, v11}, Landroid/webkit/CookieManager$Cookie;->pathMatch(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-wide v11, v1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_6

    iget-wide v11, v1, Landroid/webkit/CookieManager$Cookie;->expires:J

    cmp-long v11, v11, v6

    if-lez v11, :cond_5

    :cond_6
    iget-boolean v11, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    if-eqz v11, :cond_7

    if-eqz v9, :cond_5

    :cond_7
    iget-byte v11, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5

    .line 561
    iput-wide v6, v1, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 562
    invoke-interface {v3, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 526
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v2           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #hostAndPath:[Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #now:J
    .end local v9           #secure:Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 566
    .restart local v0       #baseDomain:Ljava/lang/String;
    .restart local v2       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v3       #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v4       #hostAndPath:[Ljava/lang/String;
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v6       #now:J
    .restart local v9       #secure:Z
    :cond_8
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 567
    .local v8, ret:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 568
    .local v10, setIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_9
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 569
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/CookieManager$Cookie;

    .line 570
    .restart local v1       #cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 571
    const/16 v11, 0x3b

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    :cond_a
    iget-object v11, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v11, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 579
    const/16 v11, 0x3d

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    iget-object v11, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 584
    .end local v1           #cookie:Landroid/webkit/CookieManager$Cookie;
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 588
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    goto/16 :goto_0

    .line 594
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 477
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 489
    :goto_0
    return-object v2

    .line 483
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 484
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "privateBrowsing"

    .prologue
    .line 501
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    :goto_0
    return-object v2

    .line 508
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/webkit/CookieManager;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 509
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .line 510
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized getUpdatedCookiesSince(J)Ljava/util/ArrayList;
    .locals 8
    .parameter "last"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v2, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    iget-object v6, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 789
    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 790
    .local v5, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 791
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 792
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 793
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 794
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 795
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v6, v0, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    .line 796
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 787
    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v1           #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v2           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 800
    .restart local v1       #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v2       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v5       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->hasCookies(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 692
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->hasCookies()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .locals 1
    .parameter "privateBrowsing"

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->hasCookies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 705
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/webkit/CookieManager;->nativeHasCookies(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 2

    .prologue
    .line 667
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-static {}, Landroid/webkit/CookieManager;->nativeRemoveAllCookie()V

    .line 682
    :goto_0
    return-void

    .line 672
    :cond_0
    new-instance v0, Landroid/webkit/CookieManager$3;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$3;-><init>(Landroid/webkit/CookieManager;)V

    .line 681
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public removeExpiredCookie()V
    .locals 2

    .prologue
    .line 712
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-static {}, Landroid/webkit/CookieManager;->nativeRemoveExpiredCookie()V

    .line 740
    :goto_0
    return-void

    .line 717
    :cond_0
    new-instance v0, Landroid/webkit/CookieManager$4;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$4;-><init>(Landroid/webkit/CookieManager;)V

    .line 739
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public removeSessionCookie()V
    .locals 3

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/webkit/CookieManager;->signalCookieOperationsStart()V

    .line 629
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    new-instance v1, Landroid/webkit/CookieManager$1;

    invoke-direct {v1, p0}, Landroid/webkit/CookieManager$1;-><init>(Landroid/webkit/CookieManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 661
    :goto_0
    return-void

    .line 640
    :cond_0
    new-instance v0, Landroid/webkit/CookieManager$2;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$2;-><init>(Landroid/webkit/CookieManager;)V

    .line 660
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 2
    .parameter "accept"

    .prologue
    .line 277
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 278
    :try_start_0
    const-string v1, "browser_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 280
    .local v0, bp:Landroid/app/enterprise/IBrowserPolicy;
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v0, v1}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const/4 p1, 0x0

    .line 286
    .end local v0           #bp:Landroid/app/enterprise/IBrowserPolicy;
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-static {p1}, Landroid/webkit/CookieManager;->nativeSetAcceptCookie(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :goto_1
    monitor-exit p0

    return-void

    .line 291
    :cond_1
    :try_start_3
    iput-boolean p1, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 283
    .restart local v0       #bp:Landroid/app/enterprise/IBrowserPolicy;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V
    .locals 25
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/webkit/CookieManager;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_0
    monitor-exit p0

    return-void

    .line 371
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1000

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    if-eqz p1, :cond_0

    .line 381
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v12

    .line 382
    .local v12, hostAndPath:[Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 390
    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 391
    const/16 v21, 0x1

    aget-object v21, v12, v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 392
    .local v14, index:I
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v12, v22

    const/16 v23, 0x0

    if-lez v14, :cond_c

    .end local v14           #index:I
    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :cond_3
    const/4 v9, 0x0

    .line 398
    .local v9, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/16 v21, 0x0

    :try_start_2
    aget-object v21, v12, v21

    const/16 v22, 0x1

    aget-object v22, v12, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/CookieManager;->parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 403
    :goto_1
    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_0

    .line 407
    const/16 v21, 0x0

    aget-object v21, v12, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, baseDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 409
    .local v8, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v8, :cond_4

    .line 410
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 416
    .local v17, now:J
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 417
    .local v19, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 418
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/CookieManager$Cookie;

    .line 420
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v10, 0x0

    .line 421
    .local v10, done:Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 422
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 423
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/CookieManager$Cookie;

    .line 424
    .local v6, cookieEntry:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager$Cookie;->exactMatch(Landroid/webkit/CookieManager$Cookie;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 427
    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_6

    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_d

    .line 429
    :cond_6
    iget-boolean v0, v6, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    const-string v21, "https"

    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 430
    :cond_7
    iget-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v6, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 431
    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 432
    iget-boolean v0, v5, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 433
    move-wide/from16 v0, v17

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 434
    move-wide/from16 v0, v17

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 435
    const/16 v21, 0x3

    move/from16 v0, v21

    iput-byte v0, v6, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 441
    :cond_8
    :goto_3
    const/4 v10, 0x1

    .line 448
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    :cond_9
    if-nez v10, :cond_10

    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_a

    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_10

    .line 449
    :cond_a
    move-wide/from16 v0, v17

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 450
    move-wide/from16 v0, v17

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 451
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-byte v0, v5, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 452
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 453
    new-instance v20, Landroid/webkit/CookieManager$Cookie;

    invoke-direct/range {v20 .. v20}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 454
    .local v20, toDelete:Landroid/webkit/CookieManager$Cookie;
    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 455
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 456
    .local v16, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_b
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 457
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CookieManager$Cookie;

    .line 458
    .local v7, cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    iget-wide v0, v7, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_b

    iget-byte v0, v7, Landroid/webkit/CookieManager$Cookie;->mode:B

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 460
    move-object/from16 v20, v7

    goto :goto_4

    .line 392
    .end local v4           #baseDomain:Ljava/lang/String;
    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v7           #cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    .end local v8           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v10           #done:Z
    .end local v13           #i:I
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v17           #now:J
    .end local v19           #size:I
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    .restart local v14       #index:I
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 399
    .end local v14           #index:I
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catch_0
    move-exception v11

    .line 400
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string/jumbo v21, "webkit"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "parse cookie failed for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 366
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hostAndPath:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 438
    .restart local v4       #baseDomain:Ljava/lang/String;
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v6       #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v8       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v10       #done:Z
    .restart local v12       #hostAndPath:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v17       #now:J
    .restart local v19       #size:I
    :cond_d
    :try_start_4
    move-wide/from16 v0, v17

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 439
    const/16 v21, 0x2

    move/from16 v0, v21

    iput-byte v0, v6, Landroid/webkit/CookieManager$Cookie;->mode:B

    goto/16 :goto_3

    .line 463
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v16       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v20       #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_e
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 465
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_f
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 417
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "value"

    .prologue
    .line 314
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1, p2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .line 323
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "url"
    .parameter "value"
    .parameter "privateBrowsing"

    .prologue
    .line 340
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {p0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Landroid/webkit/CookieManager;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .line 349
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized syncedACookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 1
    .parameter "cookie"

    .prologue
    .line 829
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-byte v0, p1, Landroid/webkit/CookieManager$Cookie;->mode:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    monitor-exit p0

    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForCookieOperationsToComplete()V
    .locals 1

    .prologue
    .line 605
    monitor-enter p0

    .line 606
    :goto_0
    :try_start_0
    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 608
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    goto :goto_0

    .line 611
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
