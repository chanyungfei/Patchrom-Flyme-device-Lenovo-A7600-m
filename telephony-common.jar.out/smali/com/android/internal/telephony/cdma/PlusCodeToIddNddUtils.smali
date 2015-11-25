.class public Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;
.super Ljava/lang/Object;
.source "PlusCodeToIddNddUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final INTERNATIONAL_PREFIX_SYMBOL:Ljava/lang/String; = "+"

.field static final LOG_TAG:Ljava/lang/String; = "PlusCodeToIddNddUtils"

.field private static final MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

.field private static hpcdTable:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

.field private static mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

.field private static sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getInstance()Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->hpcdTable:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 33
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getInstance()Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 156
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canFormatPlusCodeForSms()Z
    .locals 5

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "canFormat":Z
    const-string v2, "cdma.icc.operator.mcc"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "mcc":Ljava/lang/String;
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 243
    sget-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 247
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[canFormatPlusCodeForSms] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canFormatPlusToIddNdd()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 42
    const-string v9, "PlusCodeToIddNddUtils"

    const-string v10, "-------------canFormatPlusToIddNdd-------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v9, "cdma.operator.mcc"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "Mcc":Ljava/lang/String;
    const-string v9, "cdma.operator.sid"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "Sid":Ljava/lang/String;
    const-string v9, "cdma.operator.ltmoffset"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "Ltm_off":Ljava/lang/String;
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getProp from network] get property mcc1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sid1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ltm_off1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "Find":Z
    const/4 v9, 0x0

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 52
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    if-eqz v9, :cond_0

    .line 53
    const-string v9, "2134"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v7

    .line 54
    .local v5, "isValid":Z
    :goto_0
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", !Mcc.startsWith(2134) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "000"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v5, :cond_3

    .line 57
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 58
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v9, :cond_2

    move v0, v7

    .line 80
    .end local v5    # "isValid":Z
    :cond_0
    :goto_1
    const-string v7, "PlusCodeToIddNddUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[canFormatPlusToIddNdd] find = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0

    :cond_1
    move v5, v8

    .line 53
    goto/16 :goto_0

    .restart local v5    # "isValid":Z
    :cond_2
    move v0, v8

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 62
    .local v6, "mcc_array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 63
    :cond_4
    const-string v9, "PlusCodeToIddNddUtils"

    const-string v10, "[canFormatPlusToIddNdd] Do not find cc by SID from confilcts table, so from lookup table"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 65
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] getCcFromMINSTableBySid mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_5
    :goto_2
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v9, :cond_9

    move v0, v7

    :goto_3
    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8

    .line 67
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-virtual {v9, v6, v1}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromMINSTableByLTM(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "findMcc":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    .line 69
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 71
    :cond_7
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 72
    .end local v4    # "findMcc":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 73
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    .restart local v4    # "findMcc":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 75
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] do not conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4    # "findMcc":Ljava/lang/String;
    :cond_9
    move v0, v8

    .line 77
    goto :goto_3
.end method

.method public static checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] mccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v5, "cdma.operator.sid"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "Sid":Ljava/lang/String;
    const-string v5, "cdma.operator.ltmoffset"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "Ltm_off":Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] Sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Ltm_off = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "Mcc":Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] MccFromConflictTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz v1, :cond_2

    .line 348
    move-object v4, v1

    .line 359
    .local v4, "tempMcc":Ljava/lang/String;
    :goto_0
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] tempMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v5, "310"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "311"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "MccMnc":Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] MccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v2, :cond_1

    .line 367
    move-object v4, v2

    .line 371
    .end local v2    # "MccMnc":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 350
    .end local v4    # "tempMcc":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] MccFromMINSTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v1, :cond_3

    .line 353
    move-object v4, v1

    .restart local v4    # "tempMcc":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v4    # "tempMcc":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    .restart local v4    # "tempMcc":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 88
    .local v1, "formatNumber":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v2, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    .line 90
    .local v2, "sCC":Ljava/lang/String;
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number auto format correctly, mccIddNddSid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/MccIddNddSid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC dismatch, remove +(already erased before), add IDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "sCC":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 97
    .restart local v2    # "sCC":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    .line 98
    .local v0, "Ndd":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    const-string v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const-string v3, "PlusCodeToIddNddUtils"

    const-string v4, "CC matched, cc is chinese"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "00"

    .line 111
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC matched, remove +(already erased before) and CC, add NDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 105
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMobileNumber] number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {v2, p0}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->isMobileNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const-string v3, "PlusCodeToIddNddUtils"

    const-string v4, "CC matched, isMobile = true Ndd = "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, ""

    goto :goto_1
.end method

.method private static isMobileNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "sCC"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber] number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 161
    :cond_0
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x0

    .line 196
    :cond_1
    :goto_0
    return v3

    .line 164
    :cond_2
    const/4 v3, 0x0

    .line 166
    .local v3, "isMobile":Z
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    if-nez v6, :cond_3

    .line 167
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber] MOBILE_NUMBER_SPEC_MAP == null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 174
    .local v5, "size":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 180
    .local v2, "iCC":I
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber] iCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 182
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber] value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 185
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber]  value = icc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "prfix":Ljava/lang/String;
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber]  prfix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 189
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber]  number.startsWith(prfix) = true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v3, 0x1

    .line 191
    goto/16 :goto_0

    .line 175
    .end local v1    # "i":I
    .end local v2    # "iCC":I
    .end local v4    # "prfix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "PlusCodeToIddNddUtils"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "iCC":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeIddNddAddPlusCode] befor format number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 207
    :cond_0
    const-string v5, "PlusCodeToIddNddUtils"

    const-string v6, "[removeIddNddAddPlusCode] please check the param "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local p0    # "number":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 211
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 212
    .local v2, "formatNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 213
    .local v4, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 215
    .local v0, "Find":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 216
    .local v3, "length":I
    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 219
    if-nez v0, :cond_2

    .line 220
    const-string v5, "PlusCodeToIddNddUtils"

    const-string v6, "[removeIddNddAddPlusCode] find no operator that match the MCC "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v5, :cond_3

    .line 225
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 226
    .local v1, "Idd":Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeIddNddAddPlusCode] find match the cc, Idd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .end local v1    # "Idd":Ljava/lang/String;
    :cond_3
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeIddNddAddPlusCode] number after format = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    .line 235
    goto/16 :goto_0
.end method

.method public static removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] befor format number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 288
    :cond_0
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[removeIddNddAddPlusCodeForSms] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    .line 316
    :goto_0
    return-object v3

    .line 292
    :cond_1
    move-object v3, p0

    .line 293
    .local v3, "formatNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 294
    .local v5, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 296
    .local v0, "Find":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 297
    .local v4, "length":I
    const-string v6, "+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v2

    .line 299
    .local v2, "camFormat":Z
    if-nez v2, :cond_2

    .line 300
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[removeIddNddAddPlusCodeForSms] find no operator that match the MCC "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v6, :cond_3

    .line 305
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v1, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 306
    .local v1, "Idd":Ljava/lang/String;
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] find match the cc, Idd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 309
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] sub num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .end local v1    # "Idd":Ljava/lang/String;
    .end local v2    # "camFormat":Z
    :cond_3
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] number after format = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 256
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replacePlusCodeForSms number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    :cond_0
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    :goto_0
    return-object v1

    .line 262
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    .line 263
    .local v0, "camFormat":Z
    if-eqz v0, :cond_1

    .line 268
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 271
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_3
    const/4 v1, 0x0

    .line 277
    .local v1, "formatNumber":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 278
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->formatPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replacePlusCodeWithIddNdd number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    :cond_0
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    :goto_0
    return-object v1

    .line 133
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 135
    .local v0, "Find":Z
    if-eqz v0, :cond_1

    .line 140
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 143
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    const/4 v1, 0x0

    .line 149
    .local v1, "formatNumber":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 150
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->formatPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setMccSidLtm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "ltm_off"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method private static testProp()V
    .locals 7

    .prologue
    .line 320
    const-string v2, ""

    .line 322
    .local v2, "mcc1":Ljava/lang/String;
    const-string v3, ""

    .line 324
    .local v3, "sid1":Ljava/lang/String;
    const-string v1, ""

    .line 326
    .local v1, "ltm_off1":Ljava/lang/String;
    const-string v0, ""

    .line 327
    .local v0, "icc_mcc":Ljava/lang/String;
    const-string v4, "PlusCodeToIddNddUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[testProp] get property mcc1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sid1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ltm_off1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", icc_mcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method
