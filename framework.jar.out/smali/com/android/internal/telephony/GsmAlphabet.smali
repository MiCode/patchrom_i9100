.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 1117
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, ""

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string/jumbo v17, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string/jumbo v17, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string/jumbo v17, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string/jumbo v17, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string/jumbo v17, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string/jumbo v17, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1310
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1443
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 1446
    .local v9, r:Landroid/content/res/Resources;
    const-string v15, "TUR"

    const-string/jumbo v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "TRC"

    const-string/jumbo v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1448
    :cond_0
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1449
    const-string v15, "GSM"

    const-string/jumbo v16, "sEnabledSingleShiftTables sets as Turkey"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :goto_0
    const v15, 0x107002d

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1454
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v8, v15

    .line 1455
    .local v8, numTables:I
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v7, v15

    .line 1456
    .local v7, numShiftTables:I
    if-eq v8, v7, :cond_1

    .line 1457
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language tables array length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " != shift tables array length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_1
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v15, v15

    if-lez v15, :cond_4

    .line 1462
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1468
    :goto_1
    new-array v15, v8, [Landroid/util/SparseIntArray;

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1469
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_6

    .line 1470
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v13, v15, v4

    .line 1472
    .local v13, table:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 1473
    .local v14, tableLen:I
    if-eqz v14, :cond_2

    const/16 v15, 0x80

    if-eq v14, v15, :cond_2

    .line 1474
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language tables index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (expected 128 or 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_2
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v14}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1479
    .local v2, charToGsmTable:Landroid/util/SparseIntArray;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v2, v15, v4

    .line 1480
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v14, :cond_5

    .line 1481
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1482
    .local v1, c:C
    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1451
    .end local v1           #c:C
    .end local v2           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v7           #numShiftTables:I
    .end local v8           #numTables:I
    .end local v13           #table:Ljava/lang/String;
    .end local v14           #tableLen:I
    :cond_3
    const v15, 0x107002c

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    goto/16 :goto_0

    .line 1465
    .restart local v7       #numShiftTables:I
    .restart local v8       #numTables:I
    :cond_4
    const/4 v15, 0x0

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_1

    .line 1469
    .restart local v2       #charToGsmTable:Landroid/util/SparseIntArray;
    .restart local v4       #i:I
    .restart local v6       #j:I
    .restart local v13       #table:Ljava/lang/String;
    .restart local v14       #tableLen:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1486
    .end local v2           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v6           #j:I
    .end local v13           #table:Ljava/lang/String;
    .end local v14           #tableLen:I
    :cond_6
    new-array v15, v8, [Landroid/util/SparseIntArray;

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1487
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_a

    .line 1488
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v10, v15, v4

    .line 1490
    .local v10, shiftTable:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 1491
    .local v11, shiftTableLen:I
    if-eqz v11, :cond_7

    const/16 v15, 0x80

    if-eq v11, v15, :cond_7

    .line 1492
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language shift tables index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (expected 128 or 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_7
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, v11}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1497
    .local v3, charToShiftTable:Landroid/util/SparseIntArray;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v3, v15, v4

    .line 1498
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_5
    if-ge v6, v11, :cond_9

    .line 1499
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1500
    .restart local v1       #c:C
    const/16 v15, 0x20

    if-eq v1, v15, :cond_8

    .line 1501
    invoke-virtual {v3, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1498
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1487
    .end local v1           #c:C
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1959
    .end local v3           #charToShiftTable:Landroid/util/SparseIntArray;
    .end local v6           #j:I
    .end local v10           #shiftTable:Ljava/lang/String;
    .end local v11           #shiftTableLen:I
    :cond_a
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1960
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1961
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1962
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1965
    const/4 v4, 0x0

    .line 1967
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x40

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1968
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa3

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1969
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x24

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1970
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa5

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1971
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1972
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1973
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf9

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1974
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xec

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1975
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1976
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1977
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1978
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1979
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1980
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1981
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1982
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe5

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1984
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x394

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1985
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x5f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1986
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1987
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x393

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1988
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39b

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1989
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1990
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a0

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1991
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1992
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a3

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1993
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x398

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1994
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1995
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v16, 0xffff

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1996
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1997
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe6

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1998
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xdf

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1999
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2001
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x20

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2002
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x21

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2003
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x22

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2004
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x23

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2005
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa4

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2006
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x25

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2007
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x26

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2008
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x27

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2009
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x28

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2010
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x29

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2011
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2012
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2013
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2014
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2015
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2016
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2018
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x30

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2019
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x31

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2020
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x32

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2021
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x33

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2022
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x34

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2023
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x35

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2024
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x36

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2025
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x37

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2026
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x38

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2027
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2028
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2029
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2030
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2031
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2032
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2033
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2035
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2036
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x41

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2037
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x42

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2038
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x43

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2039
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x44

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2040
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x45

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2041
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x46

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2042
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x47

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2043
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x48

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2044
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x49

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2045
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2046
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2047
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2048
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2049
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2050
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2052
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x50

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2053
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x51

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2054
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x52

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2055
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x53

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2056
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x54

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2057
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x55

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2058
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x56

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2059
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x57

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2060
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x58

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2061
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x59

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2062
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x5a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2063
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2064
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2065
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2066
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xdc

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2067
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2069
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xbf

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2070
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x61

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2071
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x62

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2072
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x63

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2073
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x64

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2074
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x65

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2075
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x66

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2076
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x67

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2077
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x68

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2078
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x69

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2079
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2080
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2081
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2082
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2083
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2084
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x70

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2087
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x71

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x72

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2089
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x73

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x74

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2091
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x75

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x76

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2093
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x77

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x78

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2095
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x79

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x7a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2097
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2099
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xfc

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2101
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe0

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0xc

    const/16 v17, 0xa

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2105
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5e

    const/16 v17, 0x14

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7b

    const/16 v17, 0x28

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2107
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7d

    const/16 v17, 0x29

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5c

    const/16 v17, 0x2f

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2109
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5b

    const/16 v17, 0x3c

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7e

    const/16 v17, 0x3d

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2111
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5d

    const/16 v17, 0x3e

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7c

    const/16 v17, 0x40

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2113
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x20ac

    const/16 v17, 0x65

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2135
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 2136
    .local v12, size:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_6
    if-ge v6, v12, :cond_b

    .line 2137
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    sget-object v17, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2140
    :cond_b
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 2141
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v12, :cond_c

    .line 2142
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    sget-object v17, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 2141
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2145
    :cond_c
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 2146
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 27
    .parameter "s"
    .parameter "use7bitOnly"

    .prologue
    .line 839
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_3

    .line 840
    new-instance v22, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 841
    .local v22, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    .line 842
    .local v14, septets:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_1

    .line 843
    const/16 v22, 0x0

    .line 970
    .end local v14           #septets:I
    .end local v22           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    :goto_0
    return-object v22

    .line 845
    .restart local v14       #septets:I
    .restart local v22       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 846
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 847
    const/16 v25, 0xa0

    move/from16 v0, v25

    if-le v14, v0, :cond_2

    .line 848
    add-int/lit16 v0, v14, 0x98

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 850
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    sub-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 856
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 853
    :cond_2
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 854
    rsub-int v0, v14, 0xa0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 860
    .end local v14           #septets:I
    .end local v22           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 861
    .local v11, maxSingleShiftCode:I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 865
    .local v10, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, arr$:[I
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_5

    aget v6, v4, v7

    .line 868
    .local v6, i:I
    if-eqz v6, :cond_4

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 869
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 873
    .end local v6           #i:I
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 875
    .local v19, sz:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i:I
    :goto_3
    move/from16 v0, v19

    if-ge v6, v0, :cond_e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_e

    .line 876
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 877
    .local v5, c:C
    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 878
    const-string v25, "GSM"

    const-string v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 882
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 883
    .local v9, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    .line 884
    .local v21, tableIndex:I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 886
    const/16 v20, 0x0

    .local v20, table:I
    :goto_4
    move/from16 v0, v20

    if-gt v0, v11, :cond_8

    .line 887
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 888
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    .line 889
    .local v18, shiftTableIndex:I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 890
    if-eqz p1, :cond_a

    .line 892
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 893
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 886
    .end local v18           #shiftTableIndex:I
    :cond_9
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 896
    .restart local v18       #shiftTableIndex:I
    :cond_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_5

    .line 900
    :cond_b
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_5

    .line 906
    .end local v18           #shiftTableIndex:I
    .end local v20           #table:I
    :cond_c
    const/16 v20, 0x0

    .restart local v20       #table:I
    :goto_6
    move/from16 v0, v20

    if-gt v0, v11, :cond_8

    .line 907
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 908
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 906
    :cond_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 916
    .end local v5           #c:C
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v20           #table:I
    .end local v21           #tableIndex:I
    :cond_e
    new-instance v22, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 917
    .restart local v22       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 918
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 919
    const v12, 0x7fffffff

    .line 920
    .local v12, minUnencodableCount:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 921
    .restart local v9       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v17, 0x0

    .local v17, shiftTable:I
    :goto_7
    move/from16 v0, v17

    if-gt v0, v11, :cond_f

    .line 922
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    .line 923
    .restart local v14       #septets:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_11

    .line 921
    :cond_10
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 927
    :cond_11
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_16

    if-eqz v17, :cond_16

    .line 928
    const/16 v23, 0x8

    .line 936
    .local v23, udhLength:I
    :goto_9
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_19

    .line 937
    if-nez v23, :cond_12

    .line 938
    const/16 v23, 0x1

    .line 940
    :cond_12
    add-int/lit8 v23, v23, 0x6

    .line 941
    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    .line 942
    .local v15, septetsPerMessage:I
    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    .line 943
    .local v13, msgCount:I
    mul-int v25, v13, v15

    sub-int v16, v25, v14

    .line 949
    .end local v15           #septetsPerMessage:I
    .local v16, septetsRemaining:I
    :goto_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 950
    .local v24, unencodableCount:I
    if-eqz p1, :cond_13

    move/from16 v0, v24

    if-gt v0, v12, :cond_10

    .line 953
    :cond_13
    if-eqz p1, :cond_14

    move/from16 v0, v24

    if-lt v0, v12, :cond_15

    :cond_14
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_15

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 956
    :cond_15
    move/from16 v12, v24

    .line 957
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 958
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 959
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 960
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 961
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto :goto_8

    .line 929
    .end local v13           #msgCount:I
    .end local v16           #septetsRemaining:I
    .end local v23           #udhLength:I
    .end local v24           #unencodableCount:I
    :cond_16
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_17

    if-eqz v17, :cond_18

    .line 930
    :cond_17
    const/16 v23, 0x5

    .restart local v23       #udhLength:I
    goto :goto_9

    .line 932
    .end local v23           #udhLength:I
    :cond_18
    const/16 v23, 0x0

    .restart local v23       #udhLength:I
    goto :goto_9

    .line 945
    :cond_19
    const/4 v13, 0x1

    .line 946
    .restart local v13       #msgCount:I
    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    .restart local v16       #septetsRemaining:I
    goto :goto_a

    .line 966
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13           #msgCount:I
    .end local v14           #septets:I
    .end local v16           #septetsRemaining:I
    .end local v17           #shiftTable:I
    .end local v23           #udhLength:I
    :cond_1a
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 967
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 99
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 122
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 124
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 125
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 127
    if-ne v0, v2, :cond_1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 131
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 134
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 138
    goto :goto_0
.end method

.method public static charToGsmExtended(C)I
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 152
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 154
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 155
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 158
    .end local v0           #ret:I
    :cond_0
    return v0
.end method

.method public static convertEachCharacter(C)C
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 1508
    move v0, p0

    .line 1511
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1513
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1514
    move v0, p0

    .line 1523
    :cond_0
    :goto_0
    return v0

    .line 1515
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1516
    move v0, p0

    goto :goto_0

    .line 1519
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_0
.end method

.method private static convertNonGSMCharacter(C)C
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 1530
    move v0, p0

    .line 1531
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1532
    sparse-switch v0, :sswitch_data_0

    .line 1913
    const-string v1, "XEH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v1, "PAN"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v1, "TMH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v1, "VDH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1917
    :cond_0
    sparse-switch v0, :sswitch_data_1

    .line 1950
    :cond_1
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1952
    return v0

    .line 1544
    :sswitch_0
    const/16 v0, 0x61

    .line 1545
    goto :goto_0

    .line 1547
    :sswitch_1
    const/16 v0, 0x61

    .line 1548
    goto :goto_0

    .line 1550
    :sswitch_2
    const/16 v0, 0x61

    .line 1551
    goto :goto_0

    .line 1553
    :sswitch_3
    const/16 v0, 0x61

    .line 1554
    goto :goto_0

    .line 1556
    :sswitch_4
    const/16 v0, 0x61

    .line 1557
    goto :goto_0

    .line 1560
    :sswitch_5
    const/16 v0, 0x41

    .line 1561
    goto :goto_0

    .line 1563
    :sswitch_6
    const/16 v0, 0x41

    .line 1564
    goto :goto_0

    .line 1566
    :sswitch_7
    const/16 v0, 0x41

    .line 1567
    goto :goto_0

    .line 1569
    :sswitch_8
    const/16 v0, 0x41

    .line 1570
    goto :goto_0

    .line 1572
    :sswitch_9
    const/16 v0, 0x41

    .line 1573
    goto :goto_0

    .line 1575
    :sswitch_a
    const/16 v0, 0x41

    .line 1576
    goto :goto_0

    .line 1579
    :sswitch_b
    const/16 v0, 0x63

    .line 1580
    goto :goto_0

    .line 1582
    :sswitch_c
    const/16 v0, 0x63

    .line 1583
    goto :goto_0

    .line 1585
    :sswitch_d
    const/16 v0, 0x63

    .line 1586
    goto :goto_0

    .line 1589
    :sswitch_e
    const/16 v0, 0x43

    .line 1590
    goto :goto_0

    .line 1592
    :sswitch_f
    const/16 v0, 0x43

    .line 1593
    goto :goto_0

    .line 1596
    :sswitch_10
    const/16 v0, 0x64

    .line 1597
    goto :goto_0

    .line 1600
    :sswitch_11
    const/16 v0, 0x44

    .line 1601
    goto :goto_0

    .line 1604
    :sswitch_12
    const/16 v0, 0x65

    .line 1605
    goto :goto_0

    .line 1607
    :sswitch_13
    const/16 v0, 0x65

    .line 1608
    goto :goto_0

    .line 1610
    :sswitch_14
    const/16 v0, 0x65

    .line 1611
    goto :goto_0

    .line 1613
    :sswitch_15
    const/16 v0, 0x65

    .line 1614
    goto :goto_0

    .line 1616
    :sswitch_16
    const/16 v0, 0x65

    .line 1617
    goto :goto_0

    .line 1620
    :sswitch_17
    const/16 v0, 0x45

    .line 1621
    goto :goto_0

    .line 1623
    :sswitch_18
    const/16 v0, 0x45

    .line 1624
    goto :goto_0

    .line 1626
    :sswitch_19
    const/16 v0, 0x45

    .line 1627
    goto :goto_0

    .line 1629
    :sswitch_1a
    const/16 v0, 0x45

    .line 1630
    goto :goto_0

    .line 1632
    :sswitch_1b
    const/16 v0, 0x45

    .line 1633
    goto :goto_0

    .line 1635
    :sswitch_1c
    const/16 v0, 0x45

    .line 1636
    goto :goto_0

    .line 1639
    :sswitch_1d
    const/16 v0, 0x67

    .line 1640
    goto :goto_0

    .line 1643
    :sswitch_1e
    const/16 v0, 0x47

    .line 1644
    goto :goto_0

    .line 1647
    :sswitch_1f
    const/16 v0, 0x69

    .line 1648
    goto :goto_0

    .line 1650
    :sswitch_20
    const/16 v0, 0x69

    .line 1651
    goto :goto_0

    .line 1653
    :sswitch_21
    const/16 v0, 0x69

    .line 1654
    goto :goto_0

    .line 1656
    :sswitch_22
    const/16 v0, 0x69

    .line 1657
    goto/16 :goto_0

    .line 1659
    :sswitch_23
    const/16 v0, 0x69

    .line 1660
    goto/16 :goto_0

    .line 1663
    :sswitch_24
    const/16 v0, 0x49

    .line 1664
    goto/16 :goto_0

    .line 1666
    :sswitch_25
    const/16 v0, 0x49

    .line 1667
    goto/16 :goto_0

    .line 1669
    :sswitch_26
    const/16 v0, 0x49

    .line 1670
    goto/16 :goto_0

    .line 1672
    :sswitch_27
    const/16 v0, 0x49

    .line 1673
    goto/16 :goto_0

    .line 1675
    :sswitch_28
    const/16 v0, 0x49

    .line 1676
    goto/16 :goto_0

    .line 1678
    :sswitch_29
    const/16 v0, 0x49

    .line 1679
    goto/16 :goto_0

    .line 1682
    :sswitch_2a
    const/16 v0, 0x6c

    .line 1683
    goto/16 :goto_0

    .line 1685
    :sswitch_2b
    const/16 v0, 0x6c

    .line 1686
    goto/16 :goto_0

    .line 1688
    :sswitch_2c
    const/16 v0, 0x6c

    .line 1689
    goto/16 :goto_0

    .line 1692
    :sswitch_2d
    const/16 v0, 0x4c

    .line 1693
    goto/16 :goto_0

    .line 1695
    :sswitch_2e
    const/16 v0, 0x4c

    .line 1696
    goto/16 :goto_0

    .line 1698
    :sswitch_2f
    const/16 v0, 0x4c

    .line 1699
    goto/16 :goto_0

    .line 1702
    :sswitch_30
    const/16 v0, 0x6e

    .line 1703
    goto/16 :goto_0

    .line 1705
    :sswitch_31
    const/16 v0, 0x6e

    .line 1706
    goto/16 :goto_0

    .line 1709
    :sswitch_32
    const/16 v0, 0x4e

    .line 1710
    goto/16 :goto_0

    .line 1712
    :sswitch_33
    const/16 v0, 0x4e

    .line 1713
    goto/16 :goto_0

    .line 1716
    :sswitch_34
    const/16 v0, 0x6f

    .line 1717
    goto/16 :goto_0

    .line 1719
    :sswitch_35
    const/16 v0, 0x6f

    .line 1720
    goto/16 :goto_0

    .line 1722
    :sswitch_36
    const/16 v0, 0x6f

    .line 1723
    goto/16 :goto_0

    .line 1725
    :sswitch_37
    const/16 v0, 0x6f

    .line 1726
    goto/16 :goto_0

    .line 1728
    :sswitch_38
    const/16 v0, 0x6f

    .line 1729
    goto/16 :goto_0

    .line 1732
    :sswitch_39
    const/16 v0, 0x4f

    .line 1733
    goto/16 :goto_0

    .line 1735
    :sswitch_3a
    const/16 v0, 0x4f

    .line 1736
    goto/16 :goto_0

    .line 1738
    :sswitch_3b
    const/16 v0, 0x4f

    .line 1739
    goto/16 :goto_0

    .line 1741
    :sswitch_3c
    const/16 v0, 0x4f

    .line 1742
    goto/16 :goto_0

    .line 1744
    :sswitch_3d
    const/16 v0, 0x4f

    .line 1745
    goto/16 :goto_0

    .line 1747
    :sswitch_3e
    const/16 v0, 0x4f

    .line 1748
    goto/16 :goto_0

    .line 1751
    :sswitch_3f
    const/16 v0, 0x72

    .line 1752
    goto/16 :goto_0

    .line 1754
    :sswitch_40
    const/16 v0, 0x72

    .line 1755
    goto/16 :goto_0

    .line 1758
    :sswitch_41
    const/16 v0, 0x52

    .line 1759
    goto/16 :goto_0

    .line 1761
    :sswitch_42
    const/16 v0, 0x52

    .line 1762
    goto/16 :goto_0

    .line 1765
    :sswitch_43
    const/16 v0, 0x73

    .line 1766
    goto/16 :goto_0

    .line 1768
    :sswitch_44
    const/16 v0, 0x73

    .line 1769
    goto/16 :goto_0

    .line 1771
    :sswitch_45
    const/16 v0, 0x73

    .line 1772
    goto/16 :goto_0

    .line 1775
    :sswitch_46
    const/16 v0, 0x53

    .line 1776
    goto/16 :goto_0

    .line 1778
    :sswitch_47
    const/16 v0, 0x53

    .line 1779
    goto/16 :goto_0

    .line 1781
    :sswitch_48
    const/16 v0, 0x53

    .line 1782
    goto/16 :goto_0

    .line 1785
    :sswitch_49
    const/16 v0, 0x74

    .line 1786
    goto/16 :goto_0

    .line 1789
    :sswitch_4a
    const/16 v0, 0x54

    .line 1790
    goto/16 :goto_0

    .line 1793
    :sswitch_4b
    const/16 v0, 0x75

    .line 1794
    goto/16 :goto_0

    .line 1796
    :sswitch_4c
    const/16 v0, 0x75

    .line 1797
    goto/16 :goto_0

    .line 1799
    :sswitch_4d
    const/16 v0, 0x75

    .line 1800
    goto/16 :goto_0

    .line 1802
    :sswitch_4e
    const/16 v0, 0x75

    .line 1803
    goto/16 :goto_0

    .line 1806
    :sswitch_4f
    const/16 v0, 0x55

    .line 1807
    goto/16 :goto_0

    .line 1809
    :sswitch_50
    const/16 v0, 0x55

    .line 1810
    goto/16 :goto_0

    .line 1812
    :sswitch_51
    const/16 v0, 0x55

    .line 1813
    goto/16 :goto_0

    .line 1815
    :sswitch_52
    const/16 v0, 0x55

    .line 1816
    goto/16 :goto_0

    .line 1818
    :sswitch_53
    const/16 v0, 0x55

    .line 1819
    goto/16 :goto_0

    .line 1822
    :sswitch_54
    const/16 v0, 0x79

    .line 1823
    goto/16 :goto_0

    .line 1825
    :sswitch_55
    const/16 v0, 0x79

    .line 1826
    goto/16 :goto_0

    .line 1829
    :sswitch_56
    const/16 v0, 0x59

    .line 1830
    goto/16 :goto_0

    .line 1832
    :sswitch_57
    const/16 v0, 0x59

    .line 1833
    goto/16 :goto_0

    .line 1836
    :sswitch_58
    const/16 v0, 0x7a

    .line 1837
    goto/16 :goto_0

    .line 1839
    :sswitch_59
    const/16 v0, 0x7a

    .line 1840
    goto/16 :goto_0

    .line 1842
    :sswitch_5a
    const/16 v0, 0x7a

    .line 1843
    goto/16 :goto_0

    .line 1846
    :sswitch_5b
    const/16 v0, 0x5a

    .line 1847
    goto/16 :goto_0

    .line 1849
    :sswitch_5c
    const/16 v0, 0x5a

    .line 1850
    goto/16 :goto_0

    .line 1852
    :sswitch_5d
    const/16 v0, 0x5a

    .line 1853
    goto/16 :goto_0

    .line 1857
    :sswitch_5e
    const/16 v0, 0x45

    .line 1858
    goto/16 :goto_0

    .line 1860
    :sswitch_5f
    const/16 v0, 0x50

    .line 1861
    goto/16 :goto_0

    .line 1863
    :sswitch_60
    const/16 v0, 0x54

    .line 1864
    goto/16 :goto_0

    .line 1866
    :sswitch_61
    const/16 v0, 0x59

    .line 1867
    goto/16 :goto_0

    .line 1869
    :sswitch_62
    const/16 v0, 0x49

    .line 1870
    goto/16 :goto_0

    .line 1872
    :sswitch_63
    const/16 v0, 0x4f

    .line 1873
    goto/16 :goto_0

    .line 1875
    :sswitch_64
    const/16 v0, 0x41

    .line 1876
    goto/16 :goto_0

    .line 1878
    :sswitch_65
    const/16 v0, 0x48

    .line 1879
    goto/16 :goto_0

    .line 1881
    :sswitch_66
    const/16 v0, 0x4b

    .line 1882
    goto/16 :goto_0

    .line 1884
    :sswitch_67
    const/16 v0, 0x5a

    .line 1885
    goto/16 :goto_0

    .line 1887
    :sswitch_68
    const/16 v0, 0x58

    .line 1888
    goto/16 :goto_0

    .line 1890
    :sswitch_69
    const/16 v0, 0x42

    .line 1891
    goto/16 :goto_0

    .line 1893
    :sswitch_6a
    const/16 v0, 0x4e

    .line 1894
    goto/16 :goto_0

    .line 1896
    :sswitch_6b
    const/16 v0, 0x4d

    .line 1897
    goto/16 :goto_0

    .line 1919
    :sswitch_6c
    const/16 v0, 0x65

    .line 1920
    goto/16 :goto_0

    .line 1922
    :sswitch_6d
    const/16 v0, 0x6f

    .line 1923
    goto/16 :goto_0

    .line 1925
    :sswitch_6e
    const/16 v0, 0x75

    .line 1926
    goto/16 :goto_0

    .line 1928
    :sswitch_6f
    const/16 v0, 0x4f

    .line 1929
    goto/16 :goto_0

    .line 1931
    :sswitch_70
    const/16 v0, 0x55

    .line 1932
    goto/16 :goto_0

    .line 1934
    :sswitch_71
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1939
    :cond_2
    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 1940
    const/16 v1, 0x80

    if-ne v0, v1, :cond_3

    .line 1942
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 1944
    :cond_3
    const v0, 0xfeff

    goto/16 :goto_0

    .line 1532
    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_6
        0xc2 -> :sswitch_7
        0xc3 -> :sswitch_8
        0xc8 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_19
        0xcc -> :sswitch_24
        0xcd -> :sswitch_25
        0xce -> :sswitch_26
        0xcf -> :sswitch_27
        0xd2 -> :sswitch_39
        0xd3 -> :sswitch_3a
        0xd4 -> :sswitch_3b
        0xd5 -> :sswitch_3c
        0xd9 -> :sswitch_4f
        0xda -> :sswitch_50
        0xdb -> :sswitch_51
        0xdd -> :sswitch_56
        0xe1 -> :sswitch_0
        0xe2 -> :sswitch_1
        0xe3 -> :sswitch_2
        0xe7 -> :sswitch_d
        0xea -> :sswitch_12
        0xeb -> :sswitch_13
        0xed -> :sswitch_1f
        0xee -> :sswitch_20
        0xef -> :sswitch_21
        0xf3 -> :sswitch_34
        0xf4 -> :sswitch_35
        0xf5 -> :sswitch_36
        0xfa -> :sswitch_4b
        0xfb -> :sswitch_4c
        0xfd -> :sswitch_54
        0xff -> :sswitch_55
        0x100 -> :sswitch_9
        0x101 -> :sswitch_4
        0x104 -> :sswitch_a
        0x105 -> :sswitch_3
        0x106 -> :sswitch_e
        0x107 -> :sswitch_b
        0x10c -> :sswitch_f
        0x10d -> :sswitch_c
        0x10e -> :sswitch_11
        0x10f -> :sswitch_10
        0x112 -> :sswitch_1c
        0x113 -> :sswitch_16
        0x118 -> :sswitch_1a
        0x119 -> :sswitch_14
        0x11a -> :sswitch_1b
        0x11b -> :sswitch_15
        0x11e -> :sswitch_1e
        0x11f -> :sswitch_1d
        0x12a -> :sswitch_29
        0x12b -> :sswitch_23
        0x130 -> :sswitch_28
        0x131 -> :sswitch_22
        0x139 -> :sswitch_2d
        0x13a -> :sswitch_2a
        0x13d -> :sswitch_2e
        0x13e -> :sswitch_2b
        0x141 -> :sswitch_2f
        0x142 -> :sswitch_2c
        0x143 -> :sswitch_32
        0x144 -> :sswitch_30
        0x147 -> :sswitch_33
        0x148 -> :sswitch_31
        0x14c -> :sswitch_3d
        0x14d -> :sswitch_37
        0x152 -> :sswitch_3e
        0x153 -> :sswitch_38
        0x154 -> :sswitch_41
        0x155 -> :sswitch_3f
        0x158 -> :sswitch_42
        0x159 -> :sswitch_40
        0x15a -> :sswitch_46
        0x15b -> :sswitch_43
        0x15e -> :sswitch_48
        0x15f -> :sswitch_45
        0x160 -> :sswitch_47
        0x161 -> :sswitch_44
        0x164 -> :sswitch_4a
        0x165 -> :sswitch_49
        0x16a -> :sswitch_53
        0x16b -> :sswitch_4e
        0x16e -> :sswitch_52
        0x16f -> :sswitch_4d
        0x178 -> :sswitch_57
        0x179 -> :sswitch_5b
        0x17a -> :sswitch_58
        0x17b -> :sswitch_5d
        0x17c -> :sswitch_5a
        0x17d -> :sswitch_5c
        0x17e -> :sswitch_59
        0x391 -> :sswitch_64
        0x392 -> :sswitch_69
        0x395 -> :sswitch_5e
        0x396 -> :sswitch_67
        0x397 -> :sswitch_65
        0x399 -> :sswitch_62
        0x39a -> :sswitch_66
        0x39c -> :sswitch_6b
        0x39d -> :sswitch_6a
        0x39f -> :sswitch_63
        0x3a1 -> :sswitch_5f
        0x3a4 -> :sswitch_60
        0x3a5 -> :sswitch_61
        0x3a7 -> :sswitch_68
    .end sparse-switch

    .line 1917
    :sswitch_data_1
    .sparse-switch
        0xe9 -> :sswitch_6c
        0xf6 -> :sswitch_6d
        0xfc -> :sswitch_6e
        0x150 -> :sswitch_6f
        0x170 -> :sswitch_70
        0x171 -> :sswitch_71
    .end sparse-switch
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 728
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 731
    :goto_0
    return v1

    .line 729
    :catch_0
    move-exception v0

    .line 731
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 746
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 758
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 751
    const/4 v0, 0x2

    goto :goto_0

    .line 754
    :cond_2
    if-eqz p1, :cond_0

    .line 755
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 771
    .local v2, sz:I
    const/4 v1, 0x0

    .line 773
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 774
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_0
    return v1
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const/4 v6, -0x1

    .line 795
    const/4 v3, 0x0

    .line 796
    .local v3, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 797
    .local v5, sz:I
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v7, p2

    .line 798
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v7, p3

    .line 799
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 800
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 801
    .local v0, c:C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_0

    .line 802
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 806
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 807
    :cond_1
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 808
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 809
    :cond_2
    if-eqz p1, :cond_3

    .line 810
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v6

    .line 815
    .end local v0           #c:C
    .end local v3           #count:I
    :cond_4
    return v3
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "langTable"
    .parameter "langShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 993
    .local v5, size:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 994
    .local v2, charToLangTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 995
    .local v1, charToLangShiftTable:Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 996
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 997
    .local v3, encodedSeptet:I
    if-ne v3, v7, :cond_1

    .line 998
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 999
    if-ne v3, v7, :cond_0

    .line 1001
    add-int/lit8 v0, v0, 0x1

    .line 1008
    :goto_1
    if-le v0, p2, :cond_2

    .line 1012
    .end local v3           #encodedSeptet:I
    .end local v4           #i:I
    :goto_2
    return v4

    .line 1003
    .restart local v3       #encodedSeptet:I
    .restart local v4       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1006
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 995
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #encodedSeptet:I
    :cond_3
    move v4, v5

    .line 1012
    goto :goto_2
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    .prologue
    .line 1062
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    .prologue
    .line 1051
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    const/4 v3, 0x0

    .line 411
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 10
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 435
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 436
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 438
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 439
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 442
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 445
    .local v3, gsmVal:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 447
    const/16 v8, 0x7f

    add-int/lit8 v9, v7, -0x1

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 449
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 452
    :cond_0
    if-eqz v5, :cond_1

    .line 453
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    const/4 v5, 0x0

    .line 435
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 455
    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    .line 456
    const/4 v5, 0x1

    goto :goto_1

    .line 458
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 461
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v2

    .line 462
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    const/4 v8, 0x0

    .line 466
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 15
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "languageTable"
    .parameter "shiftTable"

    .prologue
    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 488
    .local v9, ret:Ljava/lang/StringBuilder;
    if-ltz p4, :cond_0

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_1

    .line 489
    :cond_0
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 p4, 0x0

    .line 492
    :cond_1
    if-ltz p5, :cond_2

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_3

    .line 493
    :cond_2
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 p5, 0x0

    .line 498
    :cond_3
    const/4 v8, 0x0

    .line 499
    .local v8, prevCharWasEscape:Z
    :try_start_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    .line 500
    .local v7, languageTableToChar:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    .line 502
    .local v11, shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 503
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 506
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 507
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 511
    :cond_5
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_b

    .line 512
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 514
    .local v1, bitOffset:I
    div-int/lit8 v2, v1, 0x8

    .line 515
    .local v2, byteOffset:I
    rem-int/lit8 v10, v1, 0x8

    .line 518
    .local v10, shift:I
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 521
    .local v5, gsmVal:I
    const/4 v12, 0x1

    if-le v10, v12, :cond_6

    .line 523
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 525
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 528
    :cond_6
    if-eqz v8, :cond_9

    .line 529
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_7

    .line 530
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :goto_1
    const/4 v8, 0x0

    .line 511
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 532
    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 533
    .local v3, c:C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_8

    .line 534
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 546
    .end local v1           #bitOffset:I
    .end local v2           #byteOffset:I
    .end local v3           #c:C
    .end local v5           #gsmVal:I
    .end local v6           #i:I
    .end local v7           #languageTableToChar:Ljava/lang/String;
    .end local v10           #shift:I
    .end local v11           #shiftTableToChar:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 547
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    const/4 v12, 0x0

    .line 551
    .end local v4           #ex:Ljava/lang/RuntimeException;
    :goto_3
    return-object v12

    .line 536
    .restart local v1       #bitOffset:I
    .restart local v2       #byteOffset:I
    .restart local v3       #c:C
    .restart local v5       #gsmVal:I
    .restart local v6       #i:I
    .restart local v7       #languageTableToChar:Ljava/lang/String;
    .restart local v10       #shift:I
    .restart local v11       #shiftTableToChar:Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 540
    .end local v3           #c:C
    :cond_9
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_a

    .line 541
    const/4 v8, 0x1

    goto :goto_2

    .line 543
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 551
    .end local v1           #bitOffset:I
    .end local v2           #byteOffset:I
    .end local v5           #gsmVal:I
    .end local v10           #shift:I
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 569
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "characterset"

    .prologue
    .line 584
    const/4 v6, 0x0

    .line 585
    .local v6, isMbcs:Z
    const/4 v2, 0x0

    .line 586
    .local v2, charset:Ljava/nio/charset/Charset;
    const/4 v8, 0x0

    .line 588
    .local v8, mbcsBuffer:Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 591
    const/4 v6, 0x1

    .line 592
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 593
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 597
    :cond_0
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v7, v13, v14

    .line 598
    .local v7, languageTableToChar:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 600
    .local v12, shiftTableToChar:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 601
    .local v10, ret:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 602
    .local v9, prevWasEscape:Z
    move/from16 v4, p1

    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_0
    add-int v13, p1, p2

    if-ge v5, v13, :cond_1

    .line 605
    aget-byte v13, p0, v5

    and-int/lit16 v1, v13, 0xff

    .line 607
    .local v1, c:I
    const/16 v13, 0xff

    if-ne v1, v13, :cond_2

    .line 648
    .end local v1           #c:I
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 609
    .restart local v1       #c:I
    :cond_2
    const/16 v13, 0x1b

    if-ne v1, v13, :cond_4

    .line 610
    if-eqz v9, :cond_3

    .line 614
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    const/4 v9, 0x0

    move v4, v5

    .line 602
    .end local v5           #i:I
    .restart local v4       #i:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_0

    .line 617
    :cond_3
    const/4 v9, 0x1

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 620
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_4
    if-eqz v9, :cond_6

    .line 621
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 622
    .local v11, shiftChar:C
    const/16 v13, 0x20

    if-ne v11, v13, :cond_5

    .line 624
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v4, v5

    .line 644
    .end local v5           #i:I
    .end local v11           #shiftChar:C
    .restart local v4       #i:I
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 626
    .end local v4           #i:I
    .restart local v5       #i:I
    .restart local v11       #shiftChar:C
    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 629
    .end local v11           #shiftChar:C
    :cond_6
    if-eqz v6, :cond_7

    const/16 v13, 0x80

    if-lt v1, v13, :cond_7

    add-int/lit8 v13, v5, 0x1

    add-int v14, p1, p2

    if-lt v13, v14, :cond_8

    .line 631
    :cond_7
    :try_start_0
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 635
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 632
    .end local v4           #i:I
    .restart local v5       #i:I
    :catch_0
    move-exception v3

    .line 633
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gsm8BitUnpackedToString : Exception - index("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), char("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    .line 635
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 638
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_8
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 639
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 641
    invoke-virtual {v2, v8}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4
    .parameter "gsmChar"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 197
    const/16 v2, 0x1b

    if-ne p0, v2, :cond_1

    move v0, v1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-ge p0, v2, :cond_2

    .line 200
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, c:C
    if-ne v0, v1, :cond_0

    .line 202
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .parameter "gsmChar"

    .prologue
    .line 175
    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 388
    div-int/lit8 v0, p1, 0x8

    .line 389
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 391
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 393
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 396
    :cond_0
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2
    .parameter "tables"

    .prologue
    .line 1040
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    monitor-exit v0

    return-void

    .line 1040
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 2
    .parameter "tables"

    .prologue
    .line 1023
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1025
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1026
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :goto_0
    monitor-exit v1

    return-void

    .line 1028
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .parameter "data"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 339
    .local v7, dataLen:I
    if-nez p2, :cond_0

    const/4 v13, 0x1

    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 341
    .local v10, septetCount:I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1

    .line 342
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 339
    .end local v10           #septetCount:I
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 344
    .restart local v10       #septetCount:I
    :cond_1
    add-int v10, v10, p1

    .line 345
    const/16 v13, 0xff

    if-le v10, v13, :cond_2

    .line 346
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 348
    :cond_2
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 349
    .local v3, byteCount:I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 350
    .local v9, ret:[B
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    .line 351
    .local v5, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    .line 352
    .local v6, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    .local v8, i:I
    move/from16 v11, p1

    .local v11, septets:I
    mul-int/lit8 v2, p1, 0x7

    .line 353
    .local v2, bitOffset:I
    :goto_1
    if-ge v8, v7, :cond_6

    if-ge v11, v10, :cond_6

    .line 355
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 356
    .local v4, c:C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 357
    .local v12, v:I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    .line 358
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 359
    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 360
    if-eqz p2, :cond_3

    .line 361
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 363
    :cond_3
    const/16 v13, 0x20

    const/16 v14, 0x20

    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 371
    :cond_4
    :goto_2
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 372
    add-int/lit8 v11, v11, 0x1

    .line 354
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 366
    :cond_5
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 367
    add-int/lit8 v2, v2, 0x7

    .line 368
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 374
    .end local v4           #c:C
    .end local v12           #v:I
    :cond_6
    const/4 v13, 0x0

    int-to-byte v14, v10

    aput-byte v14, v9, v13

    .line 375
    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .parameter "data"
    .parameter "header"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 254
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 255
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 267
    :goto_0
    return-object v2

    .line 258
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 259
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 261
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 265
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 266
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 661
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 664
    .local v1, septets:I
    new-array v0, v1, [B

    .line 666
    .local v0, ret:[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 668
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 683
    move v4, p2

    .line 684
    .local v4, outByteIndex:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 685
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 688
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, sz:I
    move v5, v4

    .line 689
    .end local v4           #outByteIndex:I
    .local v5, outByteIndex:I
    :goto_0
    if-ge v3, v6, :cond_1

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_1

    .line 692
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 694
    .local v0, c:C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 696
    .local v7, v:I
    if-ne v7, v9, :cond_4

    .line 697
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 698
    if-ne v7, v9, :cond_0

    .line 699
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 710
    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 690
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    :cond_0
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_2

    .line 714
    .end local v0           #c:C
    .end local v7           #v:I
    :cond_1
    :goto_2
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3

    .line 715
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    goto :goto_2

    .line 706
    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_1

    .line 717
    .end local v0           #c:C
    .end local v4           #outByteIndex:I
    .end local v7           #v:I
    .restart local v5       #outByteIndex:I
    :cond_3
    return-void

    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_4
    move v4, v5

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_1
.end method
