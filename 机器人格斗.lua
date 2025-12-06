-- This script was generated using the 操你妈 Obfuscator v1.4.5 
-- This file was protected using Luraph Obfuscator v14.4.1 [https://lura.ph/] 
-- ([[This file was protected with MoonSec V3]])
--使用你妈骨灰进行混淆你这个猪逼

local K,g,Yb,Ee,fb,cb=bit32.bxor,type,getmetatable,pairs
local ga=(select)
local sa=(function(...)
    return{[1]={...},[2]=ga('#',...)}
end)
local n_=((function()
    local function lc(_c,ua,pd)
        if ua>pd then
            return
        end
        return _c[ua],lc(_c,ua+1,pd)
    end
    return lc
end)())
local Zb,_e=(string.gsub),(string.char)
local Jb=(function(wc)
    wc=Zb(wc,'[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]','')
    return(wc:gsub('.',function(ba)
        if(ba=='=')then
            return''
        end
        local z,ec='',(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'):find(ba)-1)
        for De=6,1,-1 do
            z=z..(ec%2^De-ec%2^(De-1)>0 and'1'or'0')
        end
        return z
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(hd)
        if(#hd~=8)then
            return''
        end
        local qe=0
        for Na=1,8 do
            qe=qe+(hd:sub(Na,Na)=='1'and 2^(8-Na)or 0)
        end
        return _e(qe)
    end))
end)
local _d,p,Ca,Jd,Yc,Ec,G,O=string.unpack,string.sub,string.byte,bit32 .lshift,bit32 .rshift,bit32 .band,table.concat,{}
local C=(function(Y)
    local gc=O[Y]
    if gc then
        return gc
    end
    local tb,mb,Nd,Fb,Ad=Jd(1,11),Jd(1,5),1,{},''
    while Nd<=#Y do
        local i_=Ca(Y,Nd);
        Nd=Nd+1
        for rc=1,8 do
            local rb=nil
            if Ec(i_,1)~=0 then
                if Nd<=#Y then
                    rb=p(Y,Nd,Nd);
                    Nd=Nd+1
                end
            else
                if Nd+1<=#Y then
                    local h=_d('>I2',Y,Nd);
                    Nd=Nd+2
                    local me,ob=#Ad-Yc(h,5),Ec(h,(mb-1))+3;
                    rb=p(Ad,me,me+ob-1)
                end
            end
            i_=Yc(i_,1)
            if rb then
                Fb[#Fb+1]=rb;
                Ad=p(Ad..rb,-tb)
            end
        end
    end
    local Oa=G(Fb);
    O[Y]=Oa
    return Oa
end)
local Fa=(function()
    local Ka,zc,Ga,bd,je,mc,na,ce,Gb,Dd,Xd,ub=bit32 .bxor,bit32 .band,bit32 .bor,bit32 .lshift,bit32 .rshift,string.sub,string.pack,string.unpack,string.rep,table.pack,table.unpack,table.insert
    local function Pc(gb,c,od,Rb,B)
        local sd,w_,m,Fe=gb[c],gb[od],gb[Rb],gb[B]
        local Sc;
        sd=zc(sd+w_,4294967295);
        Sc=Ka(Fe,sd);
        Fe=zc(Ga(bd(Sc,16),je(Sc,16)),4294967295);
        m=zc(m+Fe,4294967295);
        Sc=Ka(w_,m);
        w_=zc(Ga(bd(Sc,12),je(Sc,20)),4294967295);
        sd=zc(sd+w_,4294967295);
        Sc=Ka(Fe,sd);
        Fe=zc(Ga(bd(Sc,8),je(Sc,24)),4294967295);
        m=zc(m+Fe,4294967295);
        Sc=Ka(w_,m);
        w_=zc(Ga(bd(Sc,7),je(Sc,25)),4294967295);
        gb[c],gb[od],gb[Rb],gb[B]=sd,w_,m,Fe
        return gb
    end
    local j,ld={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
    local Hd=function(Ua,pc,wb)
        j[1],j[2],j[3],j[4]=3103661261,1658658938,812635782,2496664307
        for ac=1,8 do
            j[ac+4]=Ua[ac]
        end
        j[13]=pc
        for Sa=1,3 do
            j[Sa+13]=wb[Sa]
        end
        for Pd=1,16 do
            ld[Pd]=j[Pd]
        end
        for zd=1,10 do
            Pc(ld,1,5,9,13);
            Pc(ld,2,6,10,14);
            Pc(ld,3,7,11,15);
            Pc(ld,4,8,12,16);
            Pc(ld,1,6,11,16);
            Pc(ld,2,7,12,13);
            Pc(ld,3,8,9,14);
            Pc(ld,4,5,10,15)
        end
        for y=1,16 do
            j[y]=zc(j[y]+ld[y],4294967295)
        end
        return j
    end
    local function Qa(Je,xc,bb,ve,U)
        local yd=#ve-U+1
        if yd<64 then
            local uc=mc(ve,U);
            ve=uc..Gb('\0',64-yd);
            U=1
        end
        assert(#ve>=64)
        local ha,v=Dd(ce('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',ve,U)),Hd(Je,xc,bb)
        for oa=1,16 do
            ha[oa]=Ka(ha[oa],v[oa])
        end
        local te=na('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',Xd(ha))
        if yd<64 then
            te=mc(te,1,yd)
        end
        return te
    end
    local function a_(T)
        local La=''
        for Dc=1,#T do
            La=La..T[Dc]
        end
        return La
    end
    local function Ce(ie,ic,Lb,Zc)
        local Ge,Ke,xd,Rd=Dd(ce('<I4I4I4I4I4I4I4I4',ie)),Dd(ce('<I4I4I4',Lb)),{},1
        while Rd<=#Zc do
            ub(xd,Qa(Ge,ic,Ke,Zc,Rd));
            Rd=Rd+64;
            ic=ic+1
        end
        return a_(xd)
    end
    return function(qb,sb,xa)
        return Ce(xa,0,sb,qb)
    end
end)()
local yb=(function()
    local lb,ue,_b,Vc,nd,ra,Yd,ja,pa,Id,yc=bit32 .bnot,bit32 .bxor,bit32 .rshift,bit32 .lshift,bit32 .band,bit32 .bor,table.insert,table.unpack,string.rep,string.char,string.byte
    local function k(Qb,Tb)
        local Mb,He=_b(Qb,Tb),Vc(Qb,32-Tb)
        return nd(ra(Mb,He),4294967295)
    end
    local Cc=function(q)
        local ae={1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298}
        local function Za(H)
            local Md=#H
            local wd=Md*8;
            H=H..'\128'
            local ab=64-((Md+9)%64)
            if ab~=64 then
                H=H..pa('\0',ab)
            end
            H=H..Id(nd(_b(wd,56),255),nd(_b(wd,48),255),nd(_b(wd,40),255),nd(_b(wd,32),255),nd(_b(wd,24),255),nd(_b(wd,16),255),nd(_b(wd,8),255),nd(wd,255))
            return H
        end
        local function u_(Ud)
            local db={}
            for S=1,#Ud,64 do
                Yd(db,Ud:sub(S,S+63))
            end
            return db
        end
        local function Qc(qc,md)
            local ed={}
            for Hb=1,64 do
                if Hb<=16 then
                    ed[Hb]=ra(Vc(yc(qc,(Hb-1)*4+1),24),Vc(yc(qc,(Hb-1)*4+2),16),Vc(yc(qc,(Hb-1)*4+3),8),yc(qc,(Hb-1)*4+4))
                else
                    local X,Ja=ue(k(ed[Hb-15],7),k(ed[Hb-15],18),_b(ed[Hb-15],3)),ue(k(ed[Hb-2],17),k(ed[Hb-2],19),_b(ed[Hb-2],10));
                    ed[Hb]=nd(ed[Hb-16]+X+ed[Hb-7]+Ja,4294967295)
                end
            end
            local fd,Gc,cd,Hc,Ab,de,Z,Xa=ja(md)
            for fa_=1,64 do
                local pb,Bc=ue(k(Ab,6),k(Ab,11),k(Ab,25)),ue(nd(Ab,de),nd(lb(Ab),Z))
                local Pb,L,ke=nd(Xa+pb+Bc+ae[fa_]+ed[fa_],4294967295),ue(k(fd,2),k(fd,13),k(fd,22)),ue(nd(fd,Gc),nd(fd,cd),nd(Gc,cd))
                local x=nd(L+ke,4294967295);
                Xa=Z;
                Z=de;
                de=Ab;
                Ab=nd(Hc+Pb,4294967295);
                Hc=cd;
                cd=Gc;
                Gc=fd;
                fd=nd(Pb+x,4294967295)
            end
            return nd(md[1]+fd,4294967295),nd(md[2]+Gc,4294967295),nd(md[3]+cd,4294967295),nd(md[4]+Hc,4294967295),nd(md[5]+Ab,4294967295),nd(md[6]+de,4294967295),nd(md[7]+Z,4294967295),nd(md[8]+Xa,4294967295)
        end
        q=Za(q)
        local Ic,ge,vb=u_(q),{1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225},''
        for ad,M in ipairs(Ic)do
            ge={Qc(M,ge)}
        end
        for Od,F in ipairs(ge)do
            vb=vb..Id(nd(_b(F,24),255));
            vb=vb..Id(nd(_b(F,16),255));
            vb=vb..Id(nd(_b(F,8),255));
            vb=vb..Id(nd(F,255))
        end
        return vb
    end
    return Cc
end)()
local s_,oe,kc,Kb,we,fc,Fc,Uc,va,nc,Kc,Ed,Wc,da,cc,ee,ye,aa,o_,xb,Ya,ze,Xb,pe,Ib,Mc,za,Ea,e_,hc=type,pcall,error,tonumber,assert,select,setmetatable,string.format,string.unpack,string.sub,string.byte,string.char,table.move,table.pack,table.create,table.insert,table.concat,coroutine.create,coroutine.yield,coroutine.resume,coroutine.close,getfenv,bit32 .bor,bit32 .bxor,bit32 .band,bit32 .btest,bit32 .rshift,bit32 .lshift,bit32 .extract,{[57633]={},[72]={},[61068]={{6,7,false},{6,9,false},{5,5,true},{2,7,false},{6,9,false},{3,10,false},{6,9,false},{8,2,true},{6,9,false},{3,7,true},{6,4,false},{10,9,false},{6,3,true},{6,5,false},{8,3,true},{3,5,false},{6,5,false},{5,5,true},{10,6,true},{10,9,false},{6,4,false},{8,7,false},{6,7,false},{6,0,false},{6,9,false},{2,10,true},{6,9,false},{8,3,false},{6,7,false},{8,8,false},{3,6,true},{3,5,false},{3,2,false},{10,5,true},{6,9,false},{5,6,false},{3,9,false},{10,8,true},{8,3,true},{8,10,false},{5,9,false},{6,9,false},{6,3,true},{10,9,false},{2,5,true},{2,6,false},{10,9,false},{6,0,false},{10,0,false},{2,3,false},{10,9,true},{6,9,true},{5,10,false},{6,7,false},{6,3,false},{6,9,true},{6,7,true},{5,2,true},{8,9,false},{6,9,false},{2,2,false},{6,2,true},{6,9,false},{6,9,false},{3,5,true},{10,10,true},{2,7,true},{5,9,false},{8,0,true},{10,2,false},{8,5,false},{5,2,true},{8,6,false},{10,0,true},{3,10,false},{10,9,false},{8,5,false},{6,8,false},{6,2,false},{10,10,false},{8,9,false},{3,3,false},{6,4,false},{8,7,false},{10,9,false},{6,3,true},{6,9,false},{10,8,true},{10,3,true},{10,7,true},{2,9,true},{3,2,true},{3,9,true},{10,9,false},{3,3,false},{6,0,true},{5,2,true},{6,3,true},{3,6,false},{6,3,false},{2,6,false},{10,9,false},{6,8,false},{6,2,false},{2,5,false},{6,5,false},{5,9,false},{8,6,true},{2,8,true},{8,7,true},{10,3,false},{3,6,false},{10,5,false},{6,9,false},{2,3,true},{6,9,false},{8,7,true},{10,10,true},{2,3,true},{5,8,true},{5,6,false},{5,10,false},{8,0,true},{2,2,true},{10,9,true},{3,5,true},{10,9,true},{6,10,true},{3,2,true},{6,9,false},{5,0,true},{6,5,false},{10,5,false},{3,2,false},{10,5,false},{6,3,true},{10,3,true},{3,3,true},{10,2,false},{10,9,false},{10,0,true},{6,9,false},{2,2,false},{6,5,false},{5,10,false},{3,8,false},{2,5,false},{2,2,false},{6,5,true},{8,3,false},{3,9,true},{6,2,false},{3,8,false},{2,0,false},{5,5,true},{6,9,false},{5,7,false},{5,10,false},{6,9,false},{3,8,false},{6,5,false},{2,6,true},{3,2,true},{2,0,false},{2,5,true},{6,10,true},{6,9,false},{8,6,false},{6,9,true},{6,6,false},{10,9,false},{6,7,false},{6,10,true},{6,3,true},{2,8,false},{6,9,false},{6,9,false},{10,8,true},{6,9,false},{3,6,false},{8,3,false},{10,10,true},{6,5,true},{10,6,false},{6,9,false},{10,0,true},{8,7,true},{10,10,true},{6,3,true},{10,3,true},{8,10,true},{10,7,true},{8,9,false},{3,0,true},{6,3,true},{6,3,true},{2,6,false},{8,9,false},{3,2,true},{5,6,true},{5,8,true},{6,9,false},{10,7,false},{10,9,true},{6,9,false},{6,3,true},{10,0,false},{10,0,false},{8,9,true},{10,9,true},{8,6,true},{8,9,false},{5,9,false},{6,9,false},{8,6,true},{5,6,false},{10,9,true},{6,9,false},{2,5,true},{10,8,false},{10,5,true},{3,6,false},{10,2,false},{6,9,false},{3,0,true},{6,9,false},{5,10,true},{6,3,true},{6,9,false},{10,6,true},{3,8,true},{6,7,false},{5,3,false},{10,2,false},{10,10,false},{10,8,true},{5,0,false},{8,1,false},{10,5,true},{6,9,false},{6,9,false},{10,9,false},{3,8,true},{5,2,false},{10,9,false},{2,8,false},{8,7,true},{10,0,false},{5,5,true},{10,2,false},{10,9,true},{8,8,true},{10,8,true},{10,9,false},{8,2,false},{6,9,false}}}
local nb=(function(Db)
    local eb=hc[57633][Db]
    if eb then
        return eb
    end
    local Ie=1
    local function ea()
        local wa,Gd,re_,ya,qd,bc,ud,Ia,rd,ma,hb,Tc,E,Pa,ib,la,N,Nc,Aa,Ma,Ob,Cd,id,Wa,vd,tc,Qd,r_,Rc,Vb,P,b_;
        Aa,Nc={},function(Cb,d_,Wd)
            Aa[Wd]=K(d_,47800)-K(Cb,64837)
            return Aa[Wd]
        end;
        Gd=Aa[-19404]or Nc(47212,2746,-19404)
        repeat
            if Gd<=29237 then
                if Gd>15180 then
                    if Gd<=20886 then
                        if Gd>18671 then
                            if Gd<19918 then
                                if Gd>18865 then
                                    Ob,Gd=ud,Aa[31104]or Nc(62464,40189,31104)
                                elseif Gd<=18734 then
                                    ya=ya+P;
                                    tc=ya
                                    if ya~=ya then
                                        Gd=58222
                                    else
                                        Gd=Aa[-16733]or Nc(5129,19377,-16733)
                                    end
                                else
                                    E=ya;
                                    P=cc(E);
                                    la,Gd,tc,Ma=1,3408,1,E
                                end
                            elseif Gd<20799 then
                                if Gd<=19918 then
                                    Gd,E=20457,r_
                                    continue
                                else
                                    N,Gd=E,Aa[12407]or Nc(21974,110475,12407)
                                end
                            elseif Gd<=20799 then
                                Vb=id;
                                ma=cc(Vb);
                                ya,E,Gd,P=1,Vb,Aa[13370]or Nc(44784,110828,13370),1
                            else
                                Ia=va('c'..Wa,Db,Ie);
                                Ie,Gd=Ie+Wa,Aa[-1175]or Nc(15726,76292,-1175)
                            end
                        elseif Gd<17512 then
                            if Gd>=17032 then
                                if Gd>17032 then
                                    Gd,id=61426,nil
                                else
                                    ud,Gd=sa'',Aa[6495]or Nc(15379,99273,6495)
                                    continue
                                end
                            elseif Gd>15848 then
                                bc,Gd=pe(ib,2126409950),Aa[-4420]or Nc(24611,117973,-4420)
                                continue
                            else
                                N,Gd=false,Aa[-27308]or Nc(14232,101829,-27308)
                            end
                        elseif Gd>=18606 then
                            if Gd>18606 then
                                if(ma>=0 and id>Vb)or((ma<0 or ma~=ma)and id<Vb)then
                                    Gd=17284
                                else
                                    Gd=Aa[-23246]or Nc(3770,95661,-23246)
                                end
                            else
                                Ma[38149]=ma[e_(Ma[42502],0,24)+1];
                                Ma[5674],Gd=e_(Ma[42502],31,1)==1,Aa[17059]or Nc(44314,9013,17059)
                            end
                        elseif Gd>17512 then
                            ya=id
                            if Vb~=Vb then
                                Gd=17284
                            else
                                Gd=Aa[29055]or Nc(43549,6911,29055)
                            end
                        else
                            Ma[38149],Gd=ma[Ma[44779]+1],Aa[-10935]or Nc(6955,103716,-10935)
                        end
                    elseif Gd<24655 then
                        if Gd<23865 then
                            if Gd<=22608 then
                                if Gd<=21715 then
                                    ud=va('B',Db,Ie);
                                    Ie,Gd=Ie+1,Aa[-24991]or Nc(56836,27201,-24991)
                                else
                                    Gd,Cd=11265,nil
                                end
                            else
                                Gd=Aa[31848]or Nc(64675,34510,31848)
                                continue
                            end
                        elseif Gd<24242 then
                            Gd=Aa[13401]or Nc(10731,119021,13401)
                            continue
                        elseif Gd<=24242 then
                            Ma=qd[tc];
                            la=Ma[49502]
                            if la==0 then
                                Gd=Aa[30454]or Nc(20621,100498,30454)
                                continue
                            elseif la==1 then
                                Gd=Aa[13840]or Nc(46348,13833,13840)
                                continue
                            elseif la==6 then
                                Gd=Aa[14705]or Nc(57486,56513,14705)
                                continue
                            elseif la==2 then
                                Gd=Aa[18846]or Nc(27306,9176,18846)
                                continue
                            elseif la==3 then
                                Gd=Aa[-1249]or Nc(60362,41222,-1249)
                                continue
                            end
                            Gd=Aa[-9023]or Nc(47813,10774,-9023)
                        else
                            Wa=r_
                            if Wa==0 then
                                Gd=Aa[3862]or Nc(55872,54069,3862)
                                continue
                            else
                                Gd=Aa[31581]or Nc(528,65965,31581)
                                continue
                            end
                            Gd=Aa[21049]or Nc(34479,4869,21049)
                        end
                    elseif Gd<27353 then
                        if Gd>25242 then
                            Gd,P=42600,pe(tc,-1183519813)
                            continue
                        elseif Gd<=24655 then
                            P=ma
                            if ya~=ya then
                                Gd=Aa[23500]or Nc(26142,28499,23500)
                            else
                                Gd=37440
                            end
                        else
                            if(Ma>=0 and P>tc)or((Ma<0 or Ma~=Ma)and P<tc)then
                                Gd=Aa[13980]or Nc(39921,18147,13980)
                            else
                                Gd=Aa[13821]or Nc(30668,5240,13821)
                            end
                        end
                    elseif Gd>27808 then
                        Tc=va('B',Db,Ie);
                        Gd,Ie=46600,Ie+1
                    elseif Gd<27548 then
                        b_,Gd=nil,52412
                    elseif Gd<=27548 then
                        Qd=va('B',Db,Ie);
                        Ie,Gd=Ie+1,9646
                    else
                        id=id+ma;
                        ya=id
                        if id~=id then
                            Gd=17284
                        else
                            Gd=Aa[-9593]or Nc(34247,31689,-9593)
                        end
                    end
                elseif Gd>9446 then
                    if Gd>12173 then
                        if Gd<=14944 then
                            if Gd>=14863 then
                                if Gd>14863 then
                                    ma=ma+E;
                                    P=ma
                                    if ma~=ma then
                                        Gd=Aa[19241]or Nc(25222,24811,19241)
                                    else
                                        Gd=37440
                                    end
                                else
                                    Ia=Cd;
                                    Wa[42502]=Ia;
                                    ee(qd,{});
                                    Gd=Aa[-7634]or Nc(1454,130049,-7634)
                                end
                            elseif Gd<=12204 then
                                la=va('B',Db,Ie);
                                Gd,Ie=Aa[-31773]or Nc(27187,99613,-31773),Ie+1
                            else
                                Gd,ud=Aa[-20843]or Nc(55679,59573,-20843),sa(nil)
                            end
                        elseif Gd>14992 then
                            if r_ then
                                Gd=Aa[4704]or Nc(25908,19065,4704)
                                continue
                            end
                            Gd=Aa[346]or Nc(39053,2350,346)
                        else
                            Gd,id=20799,pe(Vb,2126409950)
                            continue
                        end
                    elseif Gd<11265 then
                        if Gd<10824 then
                            if Gd>9646 then
                                Gd,ma=10824,pe(ya,8)
                                continue
                            else
                                Gd,re_=Aa[-3421]or Nc(46470,25333,-3421),pe(Qd,8)
                                continue
                            end
                        elseif Gd<=10824 then
                            ya=ma;
                            ib=Xb(ib,Ea(Ib(ya,127),Vb*7))
                            if not Mc(ya,128)then
                                Gd=Aa[21478]or Nc(3524,69744,21478)
                                continue
                            end
                            Gd=Aa[3743]or Nc(2161,17842,3743)
                        else
                            ya=va('B',Db,Ie);
                            Gd,Ie=10788,Ie+1
                        end
                    elseif Gd<=11731 then
                        if Gd<11535 then
                            Ia=va('<I4',Db,Ie);
                            Gd,Ie=42227,Ie+4
                        elseif Gd<=11535 then
                            wa,Gd,rd=b_,41108,nil
                        else
                            r_,Gd=nil,35166
                        end
                    else
                        Gd,P=Aa[22686]or Nc(17279,70433,22686),nil
                    end
                elseif Gd>=4424 then
                    if Gd<=7424 then
                        if Gd<=5816 then
                            if Gd>=5131 then
                                if Gd<=5131 then
                                    ib=0;
                                    N,qd,Gd,id=4,0,40501,1
                                else
                                    Wa=Ib(za(Ob,10),1023);
                                    Gd,Ma[57645]=Aa[17316]or Nc(50820,15959,17316),ma[Wa+1]
                                end
                            else
                                if(Pa>=0 and Cd>Ia)or((Pa<0 or Pa~=Pa)and Cd<Ia)then
                                    Gd=Aa[3800]or Nc(34732,17404,3800)
                                else
                                    Gd=Aa[-15043]or Nc(11188,78552,-15043)
                                end
                            end
                        elseif Gd<=6068 then
                            Gd=Aa[4303]or Nc(8130,121434,4303)
                            continue
                        else
                            Gd,ma[tc]=Aa[-720]or Nc(53438,5599,-720),Ob
                        end
                    elseif Gd<=9271 then
                        if Gd<=7742 then
                            E=0;
                            Ma,tc,Gd,P=1,4,Aa[-12575]or Nc(9952,22162,-12575),0
                        else
                            Gd,Ob=Aa[-26873]or Nc(53841,14687,-26873),nil
                        end
                    else
                        if(P>=0 and ya>E)or((P<0 or P~=P)and ya<E)then
                            Gd=Aa[-12240]or Nc(27210,100749,-12240)
                        else
                            Gd=63630
                        end
                    end
                elseif Gd>=2134 then
                    if Gd<3408 then
                        if Gd<=2134 then
                            Cd,Ia=Ib(za(tc,8),16777215),nil;
                            Ia=if Cd<8388608 then Cd else Cd-16777216;
                            Wa[44779],Gd=Ia,Aa[24845]or Nc(34232,3825,24845)
                        else
                            qd=qd+id;
                            Vb=qd
                            if qd~=qd then
                                Gd=Aa[12860]or Nc(64614,63732,12860)
                            else
                                Gd=49110
                            end
                        end
                    elseif Gd<=3408 then
                        Ob=tc
                        if Ma~=Ma then
                            Gd=Aa[10776]or Nc(42511,23412,10776)
                        else
                            Gd=Aa[-25483]or Nc(37435,107275,-25483)
                        end
                    else
                        la=P
                        if tc~=tc then
                            Gd=Aa[24924]or Nc(31810,109590,24924)
                        else
                            Gd=Aa[30755]or Nc(49528,9327,30755)
                        end
                    end
                elseif Gd>=1327 then
                    if Gd>1327 then
                        if(P>=0 and ya>E)or((P<0 or P~=P)and ya<E)then
                            Gd=58222
                        else
                            Gd=24242
                        end
                    else
                        Gd,Ma[38149]=Aa[25711]or Nc(49166,15553,25711),ma[Ma[42502]+1]
                    end
                elseif Gd>369 then
                    ma,Gd=nil,Aa[13079]or Nc(16977,20716,13079)
                else
                    Ma[38149],Gd=ma[Ma[31641]+1],Aa[-6082]or Nc(10584,108531,-6082)
                end
            elseif Gd>44472 then
                if Gd>52301 then
                    if Gd<=56086 then
                        if Gd>53393 then
                            if Gd>=55559 then
                                if Gd<=55559 then
                                    ib=bc;
                                    qd,N=cc(ib),false;
                                    ma,Vb,Gd,id=1,ib,18039,1
                                else
                                    if N then
                                        Gd=Aa[699]or Nc(1644,99241,699)
                                        continue
                                    else
                                        Gd=Aa[31507]or Nc(43227,104691,31507)
                                        continue
                                    end
                                    Gd=Aa[26218]or Nc(55403,11126,26218)
                                end
                            else
                                Gd,tc=Aa[-27192]or Nc(31101,130920,-27192),nil
                            end
                        elseif Gd>52986 then
                            Cd,Gd=Ia,Aa[16290]or Nc(58449,27369,16290)
                            continue
                        elseif Gd<=52412 then
                            if Gd<=52397 then
                                Gd,E=12173,nil
                            else
                                wa=va('B',Db,Ie);
                                Gd,Ie=Aa[-26852]or Nc(10360,74178,-26852),Ie+1
                            end
                        else
                            ud=Ob;
                            E=Xb(E,Ea(Ib(ud,127),la*7))
                            if not Mc(ud,128)then
                                Gd=Aa[17447]or Nc(16063,105355,17447)
                                continue
                            end
                            Gd=Aa[-17402]or Nc(28687,129507,-17402)
                        end
                    elseif Gd>63630 then
                        if Gd>64257 then
                            Gd,rd=36080,pe(hb,8)
                            continue
                        else
                            Ma=tc;
                            Vb=Xb(Vb,Ea(Ib(Ma,127),P*7))
                            if not Mc(Ma,128)then
                                Gd=Aa[28123]or Nc(7729,129673,28123)
                                continue
                            end
                            Gd=Aa[10564]or Nc(19581,20768,10564)
                        end
                    elseif Gd>=61426 then
                        if Gd<=61426 then
                            Vb=0;
                            E,ya,Gd,ma=1,4,Aa[6779]or Nc(38876,28752,6779),0
                        else
                            Ma,Gd=nil,12204
                        end
                    elseif Gd>58222 then
                        tc=va('<I4',Db,Ie);
                        Ie,Gd=Ie+4,Aa[-26827]or Nc(16704,104747,-26827)
                    else
                        ya,Gd=nil,7742
                    end
                elseif Gd<=47687 then
                    if Gd<=46609 then
                        if Gd<46526 then
                            if Gd<=44558 then
                                Wa,Cd=Ib(za(Ob,10),1023),Ib(za(Ob,0),1023);
                                Ma[57645]=ma[Wa+1];
                                Gd,Ma[22566]=Aa[-12673]or Nc(34413,32494,-12673),ma[Cd+1]
                            else
                                re_,Gd=nil,27548
                            end
                        elseif Gd>=46600 then
                            if Gd<=46600 then
                                Rc,Gd=pe(Tc,8),Aa[-12877]or Nc(32821,103055,-12877)
                                continue
                            else
                                P=P+Ma;
                                la=P
                                if P~=P then
                                    Gd=Aa[-3748]or Nc(26107,103645,-3748)
                                else
                                    Gd=25242
                                end
                            end
                        else
                            tc=ya
                            if E~=E then
                                Gd=58222
                            else
                                Gd=1981
                            end
                        end
                    elseif Gd<46909 then
                        tc=ya
                        if E~=E then
                            Gd=Aa[-17033]or Nc(59229,3206,-17033)
                        else
                            Gd=9446
                        end
                    elseif Gd<=46909 then
                        ud,Gd=sa(Cd),30747
                        continue
                    else
                        Gd=Aa[20609]or Nc(60373,60673,20609)
                        continue
                    end
                elseif Gd>=50158 then
                    if Gd<50749 then
                        r_=va('<d',Db,Ie);
                        Ie,Gd=Ie+8,Aa[-15003]or Nc(51536,5577,-15003)
                    elseif Gd>50749 then
                        Gd,tc=64257,pe(Ma,8)
                        continue
                    else
                        b_,Gd=pe(wa,8),11535
                        continue
                    end
                elseif Gd<=49110 then
                    if Gd<=48064 then
                        Gd,Cd=20886,nil
                    else
                        if(id>=0 and qd>N)or((id<0 or id~=id)and qd<N)then
                            Gd=Aa[-18751]or Nc(731,129663,-18751)
                        else
                            Gd=Aa[-26224]or Nc(26714,11671,-26224)
                        end
                    end
                else
                    Ma=va('B',Db,Ie);
                    Ie,Gd=Ie+1,52301
                end
            elseif Gd>38311 then
                if Gd>42814 then
                    if Gd>=43998 then
                        if Gd<=44047 then
                            if Gd>43998 then
                                tc=tc+la;
                                Ob=tc
                                if tc~=tc then
                                    Gd=Aa[-26611]or Nc(62408,12215,-26611)
                                else
                                    Gd=43573
                                end
                            else
                                Gd,P[Ob]=Aa[-18301]or Nc(64185,3763,-18301),ea()
                            end
                        else
                            Ob,Gd=pe(ud,8),Aa[14540]or Nc(52637,17770,14540)
                            continue
                        end
                    elseif Gd>43573 then
                        Gd,Tc,bc=5131,Rc,nil
                    elseif Gd>43055 then
                        if(la>=0 and tc>Ma)or((la<0 or la~=la)and tc<Ma)then
                            Gd=Aa[-28749]or Nc(3645,115522,-28749)
                        else
                            Gd=43998
                        end
                    else
                        Ma,Gd=pe(la,8),42814
                        continue
                    end
                elseif Gd>=41476 then
                    if Gd>42600 then
                        la=Ma
                        if la==4 then
                            Gd=Aa[-10033]or Nc(59833,9675,-10033)
                            continue
                        elseif la==5 then
                            Gd=Aa[14953]or Nc(26165,27386,14953)
                            continue
                        elseif la==1 then
                            Gd=Aa[-5727]or Nc(12677,124679,-5727)
                            continue
                        end
                        Gd=Aa[10927]or Nc(44142,54419,10927)
                    elseif Gd>42227 then
                        tc=P;
                        Ma=Ib(tc,255);
                        la=hc[61068][Ma+1];
                        Ob,ud,r_=la[1],la[2],la[3];
                        Wa={[40890]=Ma,[35909]=0,[49502]=ud,[22043]=nil,[22854]=0,[38149]=0,[44779]=0,[20446]=0,[42502]=0,[42254]=0,[22566]=0,[5674]=0,[57645]=0,[7059]=0,[31641]=0};
                        ee(qd,Wa)
                        if Ob==10 then
                            Gd=Aa[-9310]or Nc(7376,120497,-9310)
                            continue
                        elseif Ob==8 then
                            Gd=Aa[-18977]or Nc(54286,35609,-18977)
                            continue
                        elseif Ob==6 then
                            Gd=Aa[2994]or Nc(54628,28829,2994)
                            continue
                        end
                        Gd=Aa[3121]or Nc(40641,9320,3121)
                    elseif Gd<=41476 then
                        Wa[20446]=Ib(za(tc,8),255);
                        Wa[42254]=Ib(za(tc,16),255);
                        Gd,Wa[35909]=Aa[6838]or Nc(28607,29950,6838),Ib(za(tc,24),255)
                    else
                        Cd,Gd=pe(Ia,-1183519813),Aa[-9354]or Nc(2131,103837,-9354)
                        continue
                    end
                elseif Gd>=40501 then
                    if Gd<=40501 then
                        Vb=qd
                        if N~=N then
                            Gd=Aa[-7241]or Nc(35414,644,-7241)
                        else
                            Gd=49110
                        end
                    else
                        hb=va('B',Db,Ie);
                        Ie,Gd=Ie+1,64804
                    end
                elseif Gd<=38909 then
                    Cd=Cd+Pa;
                    vd=Cd
                    if Cd~=Cd then
                        Gd=Aa[-20880]or Nc(7295,124205,-20880)
                    else
                        Gd=Aa[20082]or Nc(59013,38832,20082)
                    end
                else
                    P,Gd,ya,E=1,46526,1,ib
                end
            elseif Gd<35444 then
                if Gd<=33132 then
                    if Gd>=32347 then
                        if Gd<=32347 then
                            Gd,r_=Aa[9461]or Nc(7903,129151,9461),pe(Wa,2126409950)
                            continue
                        else
                            ya=ya+P;
                            tc=ya
                            if ya~=ya then
                                Gd=39974
                            else
                                Gd=9446
                            end
                        end
                    elseif Gd>30747 then
                        ud,Gd=r_,Aa[20931]or Nc(28656,25759,20931)
                        continue
                    else
                        Gd,Ob=Aa[-16581]or Nc(47127,55530,-16581),n_(ud[1],1,ud[2])
                    end
                elseif Gd>34434 then
                    Wa=0;
                    Cd,Gd,Pa,Ia=0,Aa[-20281]or Nc(27552,106178,-20281),1,4
                elseif Gd<=33890 then
                    Ob=Ma[42502];
                    ud,r_=za(Ob,30),Ib(za(Ob,20),1023);
                    Ma[38149]=ma[r_+1];
                    Ma[22854]=ud
                    if ud==2 then
                        Gd=Aa[-5584]or Nc(4160,112901,-5584)
                        continue
                    elseif ud==3 then
                        Gd=Aa[12466]or Nc(54880,25483,12466)
                        continue
                    end
                    Gd=Aa[29172]or Nc(38641,3674,29172)
                else
                    return{[9328]=qd,[57350]=Tc,[65207]=wa,[32330]=P,[37654]='',[56294]=hb}
                end
            elseif Gd<=36746 then
                if Gd<36080 then
                    if Gd<=35444 then
                        Wa[20446]=Ib(za(tc,8),255);
                        Cd=Ib(za(tc,16),65535);
                        Wa[7059]=Cd;
                        Ia=nil;
                        Ia=if Cd<32768 then Cd else Cd-65536;
                        Wa[31641],Gd=Ia,Aa[-16910]or Nc(22533,23092,-16910)
                    else
                        ud,Gd=nil,50158
                    end
                elseif Gd<36245 then
                    Gd,hb,Rc=Aa[-22018]or Nc(44331,30747,-22018),rd,nil
                elseif Gd>36245 then
                    Qd=re_;
                    Wa=Xb(Wa,Ea(Ib(Qd,127),vd*7))
                    if not Mc(Qd,128)then
                        Gd=Aa[11961]or Nc(54770,64211,11961)
                        continue
                    end
                    Gd=Aa[-17843]or Nc(28452,102630,-17843)
                else
                    vd=Cd
                    if Ia~=Ia then
                        Gd=Aa[-14078]or Nc(57485,9883,-14078)
                    else
                        Gd=4424
                    end
                end
            elseif Gd>37440 then
                ya,Gd=pe(E,2126409950),18865
                continue
            elseif Gd>37119 then
                if(E>=0 and ma>ya)or((E<0 or E~=E)and ma<ya)then
                    Gd=Aa[-22361]or Nc(4865,103020,-22361)
                else
                    Gd=Aa[25654]or Nc(53710,18428,25654)
                end
            else
                Ob,Gd=nil,Aa[-24005]or Nc(31427,7742,-24005)
            end
        until Gd==12417
    end
    local R=ea();
    hc[57633][Db]=R
    return R
end)
local xe=(function(ia,Ub)
    ia=nb(ia)
    local I=ze()
    local function Kd(Eb,t_)
        local W=(function(...)
            return{...},fc('#',...)
        end)
        local Lc;
        Lc=(function(Da,qa,A)
            if qa>A then
                return
            end
            return Da[qa],Lc(Da,qa+1,A)
        end)
        local function Jc(Ld,ne,Ta,Sd)
            local he,J,sc,Vd,jc,ta,Fd,Bb,fe,zb,be,jd,_a,Oc,Q,ka,td,D,ca,oc,V,Td,se_,dc;
            he,ca=function(Bd,Wb,Xc)
                ca[Xc]=K(Wb,37402)-K(Bd,57914)
                return ca[Xc]
            end,{};
            ka=ca[22897]or he(30479,26559,22897)
            repeat
                if ka<28897 then
                    if ka<=13901 then
                        if ka<6687 then
                            if ka>3681 then
                                if ka>5080 then
                                    if ka<=6369 then
                                        if ka<=5414 then
                                            if ka>5086 then
                                                Fd=Ld[Q];
                                                fe,ka,Vd,jc=Q+1,20587,1,_a
                                            else
                                                Td=Ta[J];
                                                ka,se_=ca[9294]or he(5305,26637,9294),Td[40890]
                                            end
                                        else
                                            if se_>175 then
                                                ka=ca[-5878]or he(1086,101509,-5878)
                                                continue
                                            else
                                                ka=ca[-3128]or he(51918,29508,-3128)
                                                continue
                                            end
                                            ka=ca[15286]or he(42095,107681,15286)
                                        end
                                    else
                                        Oc=jc
                                        if Vd~=Vd then
                                            ka=ca[30586]or he(60585,24574,30586)
                                        else
                                            ka=52243
                                        end
                                    end
                                elseif ka>4593 then
                                    if ka>4643 then
                                        Ld[Td[20446]],ka=dc[Td[57645]],ca[-9379]or he(64040,44811,-9379)
                                    else
                                        Q,_a,dc=Td[38149],Td[5674],Ld[Td[20446]]
                                        if(dc==Q)~=_a then
                                            ka=ca[4438]or he(24710,129683,4438)
                                            continue
                                        else
                                            ka=ca[23382]or he(44619,28652,23382)
                                            continue
                                        end
                                        ka=ca[-8624]or he(11630,77216,-8624)
                                    end
                                elseif ka<4311 then
                                    if se_>213 then
                                        ka=ca[31035]or he(31890,123924,31035)
                                        continue
                                    else
                                        ka=ca[25268]or he(7582,87761,25268)
                                        continue
                                    end
                                    ka=ca[22351]or he(18782,68048,22351)
                                elseif ka<=4311 then
                                    Vd=Vd+Oc;
                                    zb=Vd
                                    if Vd~=Vd then
                                        ka=ca[18454]or he(11261,75831,18454)
                                    else
                                        ka=ca[-32612]or he(9407,101686,-32612)
                                    end
                                else
                                    if se_>233 then
                                        ka=ca[23230]or he(1123,78690,23230)
                                        continue
                                    else
                                        ka=ca[-11534]or he(51092,42057,-11534)
                                        continue
                                    end
                                    ka=ca[-12405]or he(42448,109130,-12405)
                                end
                            elseif ka<2966 then
                                if ka>606 then
                                    if ka>916 then
                                        if Ld[Td[20446]]then
                                            ka=ca[-4648]or he(59052,32859,-4648)
                                            continue
                                        end
                                        ka=ca[31622]or he(25142,123496,31622)
                                    else
                                        V=false;
                                        J+=1
                                        if se_>129 then
                                            ka=ca[27001]or he(54066,53475,27001)
                                            continue
                                        else
                                            ka=ca[-2680]or he(29054,103081,-2680)
                                            continue
                                        end
                                        ka=ca[30002]or he(59705,26995,30002)
                                    end
                                elseif ka<570 then
                                    Q=Yb(_a)
                                    if Q~=nil and Q.__iter~=nil then
                                        ka=ca[-26718]or he(51537,2300,-26718)
                                        continue
                                    elseif g(_a)=='table'then
                                        ka=ca[-21382]or he(29584,123514,-21382)
                                        continue
                                    end
                                    ka=ca[-14947]or he(26288,128322,-14947)
                                elseif ka>570 then
                                    ka,Bb=ca[28125]or he(47138,1359,28125),Q+Vd-1
                                else
                                    ka,Ld[Td[20446]]=ca[32378]or he(48302,122080,32378),nil
                                end
                            elseif ka<3499 then
                                if ka<=2966 then
                                    jc[2]=jc[3][jc[1]];
                                    jc[3]=jc;
                                    jc[1]=2;
                                    be[fe],ka=nil,ca[-5685]or he(30956,126910,-5685)
                                else
                                    J-=1;
                                    Ta[J],ka={[40890]=59,[20446]=pe(Td[20446],152),[42254]=pe(Td[42254],243),[35909]=0},ca[-20497]or he(43271,108985,-20497)
                                end
                            elseif ka>3559 then
                                J-=1;
                                Ta[J],ka={[40890]=240,[20446]=pe(Td[20446],154),[42254]=pe(Td[42254],73),[35909]=0},ca[-20356]or he(50857,100067,-20356)
                            elseif ka<=3499 then
                                J+=Td[31641];
                                ka=ca[7237]or he(60598,27880,7237)
                            else
                                J+=Td[31641];
                                ka=ca[27187]or he(21304,78706,27187)
                            end
                        elseif ka>=10213 then
                            if ka<13218 then
                                if ka<=10325 then
                                    if ka<10223 then
                                        jc=jc+sc;
                                        Oc=jc
                                        if jc~=jc then
                                            ka=ca[23444]or he(26086,120119,23444)
                                        else
                                            ka=ca[-10714]or he(46039,101402,-10714)
                                        end
                                    elseif ka>10223 then
                                        if(Oc>=0 and Vd>sc)or((Oc<0 or Oc~=Oc)and Vd<sc)then
                                            ka=ca[-15382]or he(11927,115422,-15382)
                                        else
                                            ka=ca[-13159]or he(52324,3305,-13159)
                                        end
                                    else
                                        J+=Td[31641];
                                        ka=ca[-15639]or he(20499,77973,-15639)
                                    end
                                elseif ka<=12158 then
                                    Ld[Td[35909]]=cc(Td[42502]);
                                    J+=1;
                                    ka=ca[6617]or he(33752,114770,6617)
                                else
                                    _a,dc,Fd=Ee(_a);
                                    ka=ca[-12289]or he(2727,77465,-12289)
                                end
                            elseif ka>13407 then
                                if ka>13744 then
                                    _a,dc,Fd=Q.__iter(_a);
                                    ka=ca[2107]or he(47981,114471,2107)
                                else
                                    ka,Vd=ca[-6060]or he(19804,32441,-6060),dc-1
                                end
                            elseif ka<13311 then
                                D=sc
                                if Oc~=Oc then
                                    ka=ca[12650]or he(28749,108900,12650)
                                else
                                    ka=ca[16032]or he(42138,111273,16032)
                                end
                            elseif ka>13311 then
                                if se_>228 then
                                    ka=ca[-15566]or he(5242,105081,-15566)
                                    continue
                                else
                                    ka=ca[15924]or he(60930,57499,15924)
                                    continue
                                end
                                ka=ca[17417]or he(56729,107027,17417)
                            else
                                J+=1;
                                ka=ca[-10636]or he(53810,111220,-10636)
                            end
                        elseif ka<8028 then
                            if ka<7152 then
                                if ka>6687 then
                                    Q,_a=Td[22854],Td[38149];
                                    dc=I[_a]or hc[72][_a]
                                    if Q==1 then
                                        ka=ca[13327]or he(24650,3194,13327)
                                        continue
                                    elseif Q==2 then
                                        ka=ca[-17248]or he(16444,10180,-17248)
                                        continue
                                    elseif Q==3 then
                                        ka=ca[-169]or he(9006,113701,-169)
                                        continue
                                    end
                                    ka=9471
                                else
                                    Q=Yb(_a)
                                    if Q~=nil and Q.__iter~=nil then
                                        ka=ca[-11899]or he(49587,5601,-11899)
                                        continue
                                    elseif g(_a)=='table'then
                                        ka=ca[-15370]or he(65005,62272,-15370)
                                        continue
                                    end
                                    ka=ca[9695]or he(4320,65743,9695)
                                end
                            elseif ka<=7265 then
                                if ka<=7152 then
                                    ka,Ld[Td[20446]]=ca[-5567]or he(306,104989,-5567),dc
                                else
                                    Q,_a=Td[42254],Td[20446];
                                    dc,Fd=oe(ye,Ld,'',Q,_a)
                                    if not dc then
                                        ka=ca[5395]or he(63748,41598,5395)
                                        continue
                                    end
                                    ka=ca[20802]or he(5605,67114,20802)
                                end
                            else
                                _a[38149]=dc
                                if Q==2 then
                                    ka=ca[30144]or he(3462,76487,30144)
                                    continue
                                elseif Q==3 then
                                    ka=ca[-21571]or he(59060,25841,-21571)
                                    continue
                                end
                                ka=9306
                            end
                        elseif ka>8897 then
                            if ka>9306 then
                                J+=1;
                                ka=ca[-10596]or he(25870,124288,-10596)
                            else
                                Td[40890]=208;
                                J+=1;
                                ka=ca[24897]or he(51546,100828,24897)
                            end
                        elseif ka<=8294 then
                            if ka>8028 then
                                Q=Yb(_a)
                                if Q~=nil and Q.__iter~=nil then
                                    ka=ca[-21158]or he(62363,54772,-21158)
                                    continue
                                elseif g(_a)=='table'then
                                    ka=ca[3901]or he(44435,4256,3901)
                                    continue
                                end
                                ka=ca[-10041]or he(43793,102155,-10041)
                            else
                                D=sc
                                if Oc~=Oc then
                                    ka=ca[-12082]or he(53715,29761,-12082)
                                else
                                    ka=63833
                                end
                            end
                        else
                            fe,jc=_a[57645],Td[57645];
                            jc='7.'..jc;
                            Vd='';
                            Oc,ka,zb,sc=#fe-1,13218,1,0
                        end
                    elseif ka<24553 then
                        if ka>=16940 then
                            if ka<=21116 then
                                if ka>=20587 then
                                    if ka>=20785 then
                                        if ka<=20785 then
                                            return Lc(Ld,Q,Q+Fd-1)
                                        else
                                            J-=1;
                                            ka,Ta[J]=ca[23100]or he(9335,74921,23100),{[40890]=26,[20446]=pe(Td[20446],74),[42254]=pe(Td[42254],58),[35909]=0}
                                        end
                                    else
                                        sc=fe
                                        if jc~=jc then
                                            ka=ca[-22601]or he(41460,29189,-22601)
                                        else
                                            ka=52121
                                        end
                                    end
                                elseif ka>17280 then
                                    zb=Vd
                                    if sc~=sc then
                                        ka=ca[-24413]or he(17380,112623,-24413)
                                    else
                                        ka=10325
                                    end
                                elseif ka>16940 then
                                    Q,_a,ka,dc=Td[22854],Ta[J+1],64877,nil
                                else
                                    jc[2]=jc[3][jc[1]];
                                    jc[3]=jc;
                                    jc[1]=2;
                                    ka,be[fe]=ca[-23218]or he(11602,130425,-23218),nil
                                end
                            elseif ka<=22695 then
                                if ka<21505 then
                                    if(D>=0 and Oc>zb)or((D<0 or D~=D)and Oc<zb)then
                                        ka=ca[-21760]or he(22329,100086,-21760)
                                    else
                                        ka=ca[-24154]or he(63518,104238,-24154)
                                    end
                                elseif ka<=21505 then
                                    sc=sc+zb;
                                    D=sc
                                    if sc~=sc then
                                        ka=ca[22192]or he(18810,118696,22192)
                                    else
                                        ka=ca[-31748]or he(41081,108934,-31748)
                                    end
                                else
                                    if(Oc>=0 and Vd>sc)or((Oc<0 or Oc~=Oc)and Vd<sc)then
                                        ka=ca[30584]or he(60597,27887,30584)
                                    else
                                        ka=ca[-23645]or he(2137,129032,-23645)
                                    end
                                end
                            else
                                ka,Vd=ca[-309]or he(26958,19823,-309),Vd..Ed(pe(Kc(fe,D+1),Kc(jc,D%#jc+1)))
                            end
                        elseif ka>=15677 then
                            if ka>=16182 then
                                if ka>16460 then
                                    _a,dc,Fd=Ee(_a);
                                    ka=ca[30280]or he(10276,129027,30280)
                                elseif ka>16182 then
                                    if jc[1]>=Td[20446]then
                                        ka=ca[6233]or he(12550,100210,6233)
                                        continue
                                    end
                                    ka=ca[19193]or he(50108,21403,19193)
                                else
                                    fe=fe+Vd;
                                    sc=fe
                                    if fe~=fe then
                                        ka=ca[6990]or he(54861,17106,6990)
                                    else
                                        ka=ca[17540]or he(59624,17521,17540)
                                    end
                                end
                            elseif ka<=15677 then
                                Wc(jc,1,Vd,Q,Ld);
                                ka=ca[-11012]or he(42670,108256,-11012)
                            else
                                if Td[35909]==4 then
                                    ka=ca[-30677]or he(64327,6245,-30677)
                                    continue
                                elseif Td[35909]==46 then
                                    ka=ca[3051]or he(30180,99132,3051)
                                    continue
                                elseif Td[35909]==99 then
                                    ka=ca[13203]or he(59089,33110,13203)
                                    continue
                                elseif Td[35909]==105 then
                                    ka=ca[-20553]or he(7354,79581,-20553)
                                    continue
                                else
                                    ka=ca[-16580]or he(22691,80526,-16580)
                                    continue
                                end
                                ka=ca[-13175]or he(51149,99399,-13175)
                            end
                        elseif ka<=14629 then
                            if ka>14491 then
                                if se_>85 then
                                    ka=ca[-12464]or he(45822,11736,-12464)
                                    continue
                                else
                                    ka=ca[17922]or he(63347,624,17922)
                                    continue
                                end
                                ka=ca[19326]or he(43589,109311,19326)
                            elseif ka>14385 then
                                Q=Td[38149];
                                Ld[Td[42254]]=Ld[Td[20446]][Q];
                                J+=1;
                                ka=ca[-20991]or he(30238,71312,-20991)
                            else
                                ka=ca[-6913]or he(43187,118973,-6913)
                                continue
                            end
                        else
                            ka,_a[22566]=ca[-26820]or he(60295,48141,-26820),fe
                        end
                    elseif ka<=27217 then
                        if ka<=26219 then
                            if ka>=25714 then
                                if ka>26185 then
                                    if se_>55 then
                                        ka=ca[21757]or he(15599,68164,21757)
                                        continue
                                    else
                                        ka=ca[20088]or he(18844,106491,20088)
                                        continue
                                    end
                                    ka=ca[-29363]or he(29818,70844,-29363)
                                elseif ka<=25714 then
                                    _a,dc,Fd=Q.__iter(_a);
                                    ka=ca[9729]or he(33285,102944,9729)
                                else
                                    if Td[35909]==147 then
                                        ka=ca[-16570]or he(47812,63369,-16570)
                                        continue
                                    elseif Td[35909]==165 then
                                        ka=ca[24660]or he(18711,66963,24660)
                                        continue
                                    elseif Td[35909]==181 then
                                        ka=ca[10646]or he(27529,127799,10646)
                                        continue
                                    elseif Td[35909]==184 then
                                        ka=ca[19639]or he(50346,2293,19639)
                                        continue
                                    else
                                        ka=ca[-9052]or he(870,29068,-9052)
                                        continue
                                    end
                                    ka=ca[24588]or he(2869,84847,24588)
                                end
                            elseif ka<24688 then
                                ka,fe=15039,sc
                                continue
                            elseif ka<=24688 then
                                Bb,J,ka,be,ta,V=-1,1,ca[5935]or he(7222,97384,5935),Fc({},{__mode='vs'}),Fc({},{__mode='ks'}),false
                            else
                                if se_>26 then
                                    ka=ca[25720]or he(52502,104660,25720)
                                    continue
                                else
                                    ka=ca[4697]or he(19524,119610,4697)
                                    continue
                                end
                                ka=ca[-23145]or he(25383,123801,-23145)
                            end
                        elseif ka<=26733 then
                            if ka<=26460 then
                                if ka>26299 then
                                    ka,Q,_a=ca[650]or he(52218,17636,650),Ta[J],nil
                                else
                                    J+=1;
                                    ka=ca[-8772]or he(46255,120033,-8772)
                                end
                            else
                                if not Ld[Td[20446]]then
                                    ka=ca[-1520]or he(53910,51841,-1520)
                                    continue
                                end
                                ka=ca[28650]or he(10189,74823,28650)
                            end
                        else
                            if se_>113 then
                                ka=ca[32602]or he(46868,20421,32602)
                                continue
                            else
                                ka=ca[10696]or he(10220,69510,10696)
                                continue
                            end
                            ka=ca[16038]or he(30453,71471,16038)
                        end
                    elseif ka<=27947 then
                        if ka>27532 then
                            if ka<=27871 then
                                Q,_a,dc=Td[38149],Td[5674],Ld[Td[20446]]
                                if(dc==Q)~=_a then
                                    ka=ca[10321]or he(45544,28847,10321)
                                    continue
                                else
                                    ka=ca[-28539]or he(34441,22900,-28539)
                                    continue
                                end
                                ka=ca[6197]or he(22589,79991,6197)
                            else
                                ka,Ld[Td[20446]]=ca[30977]or he(56734,63161,30977),dc[Td[57645]][Td[22566]]
                            end
                        elseif ka>27423 then
                            if se_>241 then
                                ka=ca[-2791]or he(14415,30371,-2791)
                                continue
                            else
                                ka=ca[11634]or he(18352,106477,11634)
                                continue
                            end
                            ka=ca[-25800]or he(42549,108143,-25800)
                        elseif ka<=27358 then
                            Oc=Oc+D;
                            td=Oc
                            if Oc~=Oc then
                                ka=ca[-24922]or he(27967,31988,-24922)
                            else
                                ka=21153
                            end
                        else
                            ka,Vd=ca[13905]or he(64605,98902,13905),Vd..Ed(pe(Kc(fe,D+1),Kc(jc,D%#jc+1)))
                        end
                    elseif ka<28539 then
                        if ka>28015 then
                            Q,_a,dc=pe(Td[42254],204),pe(Td[20446],108),pe(Td[35909],150);
                            Fd,fe=_a==0 and Bb-Q or _a-1,Ld[Q];
                            jc,Vd=W(fe(Lc(Ld,Q+1,Q+Fd)))
                            if dc==0 then
                                ka=ca[-19920]or he(18780,16350,-19920)
                                continue
                            else
                                ka=ca[-8384]or he(40540,8204,-8384)
                                continue
                            end
                            ka=15677
                        else
                            if se_>84 then
                                ka=ca[16555]or he(39601,28870,16555)
                                continue
                            else
                                ka=ca[-4243]or he(60731,59254,-4243)
                                continue
                            end
                            ka=ca[718]or he(9340,74934,718)
                        end
                    elseif ka<=28539 then
                        _a,dc,Fd=Q.__iter(_a);
                        ka=ca[-23303]or he(54734,100568,-23303)
                    else
                        ka,jc=ca[-9948]or he(1016,74927,-9948),jc..Ed(pe(Kc(Fd,zb+1),Kc(fe,zb%#fe+1)))
                    end
                elseif ka>50471 then
                    if ka<58829 then
                        if ka<=54597 then
                            if ka<52121 then
                                if ka<=51489 then
                                    if ka>51246 then
                                        Fd,ka=nil,ca[-4482]or he(41617,61814,-4482)
                                    elseif ka>50668 then
                                        jc[zb],ka=oc,ca[32293]or he(42338,51765,32293)
                                    else
                                        ka,Ld[Td[20446]]=ca[27261]or he(365,82343,27261),Td[38149]
                                    end
                                elseif ka<=51940 then
                                    if se_>239 then
                                        ka=ca[-20514]or he(18811,78112,-20514)
                                        continue
                                    else
                                        ka=ca[15019]or he(62537,6541,15019)
                                        continue
                                    end
                                    ka=ca[-28146]or he(19876,78366,-28146)
                                else
                                    jc[zb],ka=t_[D[42254]+1],ca[-5175]or he(61911,46814,-5175)
                                end
                            elseif ka>54246 then
                                if ka<=54515 then
                                    Vd=Vd+Oc;
                                    zb=Vd
                                    if Vd~=Vd then
                                        ka=ca[-723]or he(9346,121045,-723)
                                    else
                                        ka=10325
                                    end
                                else
                                    td=Oc
                                    if zb~=zb then
                                        ka=ca[-21351]or he(41040,12361,-21351)
                                    else
                                        ka=ca[30765]or he(1660,107773,30765)
                                    end
                                end
                            elseif ka<52243 then
                                if(Vd>=0 and fe>jc)or((Vd<0 or Vd~=Vd)and fe<jc)then
                                    ka=ca[25532]or he(8922,118571,25532)
                                else
                                    ka=64814
                                end
                            elseif ka<=52243 then
                                if(sc>=0 and jc>Vd)or((sc<0 or sc~=sc)and jc<Vd)then
                                    ka=ca[7497]or he(42721,103990,7497)
                                else
                                    ka=ca[30714]or he(20165,121250,30714)
                                end
                            else
                                fe,jc=_a(dc,Fd);
                                Fd=fe
                                if Fd==nil then
                                    ka=ca[14587]or he(27233,21142,14587)
                                else
                                    ka=ca[-8218]or he(37364,122989,-8218)
                                end
                            end
                        elseif ka>=55827 then
                            if ka<=57014 then
                                if ka<56226 then
                                    if(zb>=0 and sc>Oc)or((zb<0 or zb~=zb)and sc<Oc)then
                                        ka=ca[14787]or he(35102,99889,14787)
                                    else
                                        ka=27423
                                    end
                                elseif ka<=56226 then
                                    if se_>40 then
                                        ka=ca[6859]or he(11794,27068,6859)
                                        continue
                                    else
                                        ka=ca[24330]or he(47070,119888,24330)
                                        continue
                                    end
                                    ka=ca[28293]or he(43110,108760,28293)
                                else
                                    _a,dc,Fd=Ee(_a);
                                    ka=ca[24963]or he(58258,30316,24963)
                                end
                            elseif ka<=58062 then
                                fe,jc=_a(dc,Fd);
                                Fd=fe
                                if Fd==nil then
                                    ka=32777
                                else
                                    ka=ca[-15360]or he(17823,8481,-15360)
                                end
                            else
                                _a[57645]=Fd;
                                fe,ka=nil,ca[-18842]or he(44834,16672,-18842)
                            end
                        elseif ka<55238 then
                            if ka<=55142 then
                                if se_>229 then
                                    ka=ca[-23675]or he(48816,110700,-23675)
                                    continue
                                else
                                    ka=ca[-11087]or he(10364,27839,-11087)
                                    continue
                                end
                                ka=ca[13639]or he(50601,99811,13639)
                            else
                                J-=1;
                                ka,Ta[J]=ca[-25526]or he(31398,72472,-25526),{[40890]=141,[20446]=pe(Td[20446],187),[42254]=pe(Td[42254],92),[35909]=0}
                            end
                        elseif ka>55238 then
                            Q=t_[Td[42254]+1];
                            ka,Q[3][Q[1]]=ca[32616]or he(60849,28139,32616),Ld[Td[20446]]
                        else
                            if se_>93 then
                                ka=ca[28600]or he(37609,7982,28600)
                                continue
                            else
                                ka=ca[14164]or he(63293,12042,14164)
                                continue
                            end
                            ka=ca[8577]or he(3760,85738,8577)
                        end
                    elseif ka<61925 then
                        if ka>60176 then
                            if ka>61542 then
                                J-=1;
                                ka,Ta[J]=ca[-22019]or he(41348,108094,-22019),{[40890]=129,[20446]=pe(Td[20446],222),[42254]=pe(Td[42254],251),[35909]=0}
                            elseif ka<60923 then
                                J-=1;
                                ka,Ta[J]=ca[29647]or he(30705,70699,29647),{[40890]=62,[20446]=pe(Td[20446],59),[42254]=pe(Td[42254],239),[35909]=0}
                            elseif ka<=60923 then
                                Q,_a=Td[20446],Td[42254]-1
                                if _a==-1 then
                                    ka=ca[7876]or he(19049,66183,7876)
                                    continue
                                end
                                ka=ca[12781]or he(15521,126136,12781)
                            else
                                if not V then
                                    ka=ca[19100]or he(47961,65371,19100)
                                    continue
                                end
                                ka=ca[-18671]or he(29686,1914,-18671)
                            end
                        elseif ka>59466 then
                            if ka<=60107 then
                                if se_>4 then
                                    ka=ca[32349]or he(16369,121008,32349)
                                    continue
                                else
                                    ka=ca[-4244]or he(1273,117206,-4244)
                                    continue
                                end
                                ka=ca[-27555]or he(42225,107819,-27555)
                            else
                                ka,sc=ca[-27544]or he(43795,9757,-27544),sc..Ed(pe(Kc(jc,td+1),Kc(Vd,td%#Vd+1)))
                            end
                        elseif ka>59294 then
                            _a=Sd[19072];
                            ka,Bb=ca[13265]or he(19932,122359,13265),Q+_a-1
                        elseif ka>58829 then
                            jd=D[42254];
                            oc=be[jd]
                            if oc==nil then
                                ka=ca[-10797]or he(21386,74510,-10797)
                                continue
                            end
                            ka=51246
                        else
                            J+=Td[31641];
                            ka=ca[16366]or he(16481,65755,16366)
                        end
                    elseif ka>63833 then
                        if ka<=65193 then
                            if ka>64877 then
                                Ya(jc);
                                ta[fe],ka=nil,ca[13890]or he(65043,25109,13890)
                            elseif ka>64814 then
                                Fd,fe=_a[38149],Td[38149];
                                fe='7.'..fe;
                                jc='';
                                Vd,ka,sc,Oc=0,ca[31879]or he(23819,106063,31879),#Fd-1,1
                            else
                                Fd..=Ld[sc];
                                ka=ca[-22593]or he(9505,103499,-22593)
                            end
                        else
                            oc={[1]=jd,[3]=Ld};
                            be[jd],ka=oc,ca[9392]or he(4687,76473,9392)
                        end
                    elseif ka<63481 then
                        if ka<=62045 then
                            if ka>61925 then
                                Fd,ka=nil,46766
                            else
                                sc=sc+zb;
                                D=sc
                                if sc~=sc then
                                    ka=ca[-308]or he(64638,21841,-308)
                                else
                                    ka=ca[-9081]or he(35324,120771,-9081)
                                end
                            end
                        else
                            Q,_a=nil,pe(Td[7059],36295);
                            Q=if _a<32768 then _a else _a-65536;
                            dc=Q;
                            Fd=ne[dc+1];
                            fe=Fd[57350];
                            jc=cc(fe);
                            Ld[pe(Td[20446],48)]=Kd(Fd,jc);
                            sc,Oc,Vd,ka=fe,1,1,ca[10972]or he(45422,17296,10972)
                        end
                    elseif ka<=63824 then
                        if ka<=63481 then
                            ka,Ld[Td[20446]]=ca[-20977]or he(15344,88106,-20977),Ld[Td[42254]]
                        else
                            Fd,ka=_a-1,ca[32101]or he(857,106638,32101)
                        end
                    else
                        if(zb>=0 and sc>Oc)or((zb<0 or zb~=zb)and sc<Oc)then
                            ka=ca[16616]or he(18162,116000,16616)
                        else
                            ka=ca[-6853]or he(56102,2599,-6853)
                        end
                    end
                elseif ka>40633 then
                    if ka<45682 then
                        if ka>43017 then
                            if ka>=44383 then
                                if ka>44383 then
                                    J+=1;
                                    ka=ca[25209]or he(62258,103284,25209)
                                else
                                    Q[38149]=_a;
                                    Td[40890],ka=40,ca[25369]or he(48472,122322,25369)
                                end
                            elseif ka>43271 then
                                dc,Fd=Q[38149],Td[38149];
                                Fd='7.'..Fd;
                                fe='';
                                jc,Vd,ka,sc=0,#dc-1,6602,1
                            else
                                ka,Fd=ca[-6071]or he(20717,111010,-6071),Vd
                                continue
                            end
                        elseif ka<=41815 then
                            if ka>=40967 then
                                if ka<=40967 then
                                    Wc(Sd[41139],1,_a,Q,Ld);
                                    ka=ca[-27337]or he(56317,112695,-27337)
                                else
                                    _a,dc,Fd=be
                                    if g(_a)~='function'then
                                        ka=ca[-11053]or he(39036,59668,-11053)
                                        continue
                                    end
                                    ka=ca[-21061]or he(1340,89038,-21061)
                                end
                            else
                                fe,jc=_a(dc,Fd);
                                Fd=fe
                                if Fd==nil then
                                    ka=ca[2726]or he(18019,67237,2726)
                                else
                                    ka=16460
                                end
                            end
                        elseif ka<=42567 then
                            J-=1;
                            Ta[J],ka={[40890]=213,[20446]=pe(Td[20446],33),[42254]=pe(Td[42254],10),[35909]=0},ca[-12760]or he(10166,75752,-12760)
                        else
                            if se_>86 then
                                ka=ca[-28506]or he(58881,32824,-28506)
                                continue
                            else
                                ka=ca[-6809]or he(9886,28627,-6809)
                                continue
                            end
                            ka=ca[-3407]or he(19131,68349,-3407)
                        end
                    elseif ka>=47497 then
                        if ka>48871 then
                            if ka>48977 then
                                if se_>208 then
                                    ka=ca[-31535]or he(65438,2698,-31535)
                                    continue
                                else
                                    ka=ca[-7878]or he(16412,113564,-7878)
                                    continue
                                end
                                ka=ca[3009]or he(49932,99206,3009)
                            else
                                ka,_a=44383,fe
                                continue
                            end
                        elseif ka>47903 then
                            Ld[Td[20446]],ka=#Ld[Td[42254]],ca[16606]or he(40558,130720,16606)
                        elseif ka>47497 then
                            if se_>240 then
                                ka=ca[-19382]or he(5105,118605,-19382)
                                continue
                            else
                                ka=ca[-12526]or he(22283,70159,-12526)
                                continue
                            end
                            ka=ca[-29751]or he(2772,84814,-29751)
                        else
                            if se_>73 then
                                ka=ca[-4945]or he(57019,106764,-4945)
                                continue
                            else
                                ka=ca[20882]or he(27471,101827,20882)
                                continue
                            end
                            ka=ca[3421]or he(8304,73898,3421)
                        end
                    elseif ka<46329 then
                        if ka>45682 then
                            ka,Fd=ca[19996]or he(37891,21872,19996),Bb-Q+1
                        else
                            Fd,ka=Vd,ca[11370]or he(59874,25092,11370)
                            continue
                        end
                    elseif ka>46766 then
                        _a,dc,Fd=be
                        if g(_a)~='function'then
                            ka=ca[6809]or he(29099,16298,6809)
                            continue
                        end
                        ka=ca[9445]or he(25305,111300,9445)
                    elseif ka<=46329 then
                        Q,_a=Td[20446],Td[42254];
                        dc=_a-1
                        if dc==-1 then
                            ka=ca[3394]or he(58758,10628,3394)
                            continue
                        else
                            ka=ca[-16016]or he(63432,105816,-16016)
                            continue
                        end
                        ka=20785
                    else
                        fe,jc=_a[57645],Td[57645];
                        jc='7.'..jc;
                        Vd='';
                        ka,zb,Oc,sc=8028,1,#fe-1,0
                    end
                elseif ka<32777 then
                    if ka<=31048 then
                        if ka<=29961 then
                            if ka<=29791 then
                                if ka>=28930 then
                                    if ka>28930 then
                                        J-=1;
                                        Ta[J],ka={[40890]=175,[20446]=pe(Td[20446],20),[42254]=pe(Td[42254],47),[35909]=0},ca[-28472]or he(49738,99020,-28472)
                                    else
                                        J-=1;
                                        Ta[J],ka={[40890]=228,[20446]=pe(Td[20446],102),[42254]=pe(Td[42254],210),[35909]=0},ca[3229]or he(6153,96387,3229)
                                    end
                                else
                                    _a[57645],ka=Fd,ca[-22870]or he(18991,24181,-22870)
                                end
                            else
                                if Td[35909]==63 then
                                    ka=ca[-22056]or he(44759,109644,-22056)
                                    continue
                                elseif Td[35909]==232 then
                                    ka=ca[3660]or he(42398,2106,3660)
                                    continue
                                else
                                    ka=ca[-1255]or he(38507,113488,-1255)
                                    continue
                                end
                                ka=ca[2645]or he(25814,124232,2645)
                            end
                        elseif ka>29988 then
                            J-=1;
                            ka,Ta[J]=ca[-13437]or he(5312,95610,-13437),{[40890]=4,[20446]=pe(Td[20446],192),[42254]=pe(Td[42254],198),[35909]=0}
                        else
                            if se_>237 then
                                ka=ca[-30278]or he(17967,67169,-30278)
                                continue
                            else
                                ka=ca[590]or he(59978,64982,590)
                                continue
                            end
                            ka=ca[-10183]or he(15912,89698,-10183)
                        end
                    elseif ka<32310 then
                        if ka<=31468 then
                            Q=t_[Td[42254]+1];
                            Ld[Td[20446]],ka=Q[3][Q[1]],ca[9229]or he(40733,130967,9229)
                        else
                            Q,_a,dc=Td[35909],Td[20446],Td[38149];
                            Fd=Ld[_a];
                            Ld[Q+1]=Fd;
                            Ld[Q]=Fd[dc];
                            J+=1;
                            ka=ca[25195]or he(52046,101312,25195)
                        end
                    elseif ka<=32310 then
                        zb=Vd
                        if sc~=sc then
                            ka=ca[-15446]or he(19512,68722,-15446)
                        else
                            ka=22695
                        end
                    else
                        D=Ta[J];
                        J+=1;
                        td=D[20446]
                        if td==0 then
                            ka=ca[-31739]or he(61262,13133,-31739)
                            continue
                        elseif td==1 then
                            ka=ca[22130]or he(40557,127471,22130)
                            continue
                        elseif td==2 then
                            ka=ca[12771]or he(30979,128072,12771)
                            continue
                        end
                        ka=ca[13497]or he(57083,57218,13497)
                    end
                elseif ka>=36579 then
                    if ka>38500 then
                        if ka<=40017 then
                            ka,Ld[Td[35909]]=ca[-5111]or he(16523,65805,-5111),Fd
                        else
                            fe,ka=fe..Ed(pe(Kc(dc,Oc+1),Kc(Fd,Oc%#Fd+1))),ca[-16145]or he(50062,56195,-16145)
                        end
                    elseif ka<=37859 then
                        if ka<=37538 then
                            if ka<=36579 then
                                J+=Td[31641];
                                ka=ca[13520]or he(15198,89040,13520)
                            else
                                if se_>18 then
                                    ka=ca[3439]or he(2432,87640,3439)
                                    continue
                                else
                                    ka=ca[-18725]or he(16847,72922,-18725)
                                    continue
                                end
                                ka=ca[27974]or he(26082,125476,27974)
                            end
                        else
                            jd={[2]=Ld[D[42254]],[1]=2};
                            jd[3]=jd;
                            ka,jc[zb]=ca[12229]or he(22600,22867,12229),jd
                        end
                    else
                        if se_>59 then
                            ka=ca[17856]or he(9568,28684,17856)
                            continue
                        else
                            ka=ca[9909]or he(27510,121385,9909)
                            continue
                        end
                        ka=ca[12090]or he(27474,125908,12090)
                    end
                elseif ka>34338 then
                    if ka>34656 then
                        if se_>122 then
                            ka=ca[-3979]or he(16967,19624,-3979)
                            continue
                        else
                            ka=ca[21247]or he(2789,114245,21247)
                            continue
                        end
                        ka=ca[26399]or he(8392,74050,26399)
                    else
                        if se_>194 then
                            ka=ca[27981]or he(16763,17754,27981)
                            continue
                        else
                            ka=ca[-28938]or he(40789,1098,-28938)
                            continue
                        end
                        ka=ca[-349]or he(44987,110589,-349)
                    end
                elseif ka>=33815 then
                    if ka>33815 then
                        jc,Vd=_a[22566],Td[22566];
                        Vd='7.'..Vd;
                        sc='';
                        ka,Oc,D,zb=54597,0,1,#jc-1
                    else
                        dc,ka=jc,ca[3925]or he(53042,55540,3925)
                        continue
                    end
                else
                    _a,dc,Fd=ta
                    if g(_a)~='function'then
                        ka=ca[-18186]or he(53044,57198,-18186)
                        continue
                    end
                    ka=ca[-26149]or he(44424,110978,-26149)
                end
            until ka==63518
        end
        return function(...)
            local Ra,l_,Ha,gd,Nb,Ba,kb,Be,Va,Sb,dd;
            l_,Nb={},function(le,Ae,Ac)
                l_[Ae]=K(Ac,47175)-K(le,36683)
                return l_[Ae]
            end;
            dd=l_[-11558]or Nb(31935,-11558,74345)
            while dd~=49766 do
                if dd>41679 then
                    if dd>=58840 then
                        if dd>58840 then
                            gd,Be=Sb[2],nil;
                            Va=gd;
                            Be=s_(Va)=='string'
                            if Be==false then
                                dd=l_[-20957]or Nb(10913,-20957,113129)
                                continue
                            end
                            dd=l_[30532]or Nb(54004,30532,49275)
                        else
                            return Lc(Sb,2,kb)
                        end
                    else
                        Ha,Ra,Ba=da(...),cc(Eb[65207]),{[19072]=0,[41139]={}};
                        Wc(Ha,1,Eb[56294],0,Ra)
                        if Eb[56294]<Ha.n then
                            dd=l_[-11537]or Nb(62553,-11537,31501)
                            continue
                        end
                        dd=l_[-25924]or Nb(11608,-25924,107423)
                    end
                elseif dd>=23492 then
                    if dd>=31173 then
                        if dd<=31173 then
                            Sb,kb=W(oe(Jc,Ra,Eb[32330],Eb[9328],Ba))
                            if Sb[1]then
                                dd=l_[11198]or Nb(57165,11198,101785)
                                continue
                            else
                                dd=l_[5036]or Nb(61008,5036,128421)
                                continue
                            end
                            dd=41679
                        else
                            dd=l_[-16701]or Nb(37691,-16701,26257)
                            continue
                        end
                    else
                        dd,gd=l_[3947]or Nb(4744,3947,7),s_(gd)
                    end
                elseif dd<=6781 then
                    return kc(gd,0)
                else
                    Sb,kb=Eb[56294]+1,Ha.n-Eb[56294];
                    Ba[19072]=kb;
                    Wc(Ha,Sb,Sb+kb-1,1,Ba[41139]);
                    dd=l_[-13624]or Nb(20903,-13624,123126)
                end
            end
        end
    end
    return Kd(ia,Ub)
end)
local jb;
jb,fb={[0]=0},function()
    jb[0]=jb[0]+1
    return{[1]=jb[0],[3]=jb}
end;
cb=xe
return(function()
    local vc={[2]=cb,[1]=2};
    vc[3]=vc
    local kd={[1]=2,[2]=C};
    kd[3]=kd
    local f_={[2]=Fa,[1]=2};
    f_[3]=f_
    local Zd={[1]=2,[2]=yb};
    Zd[3]=Zd
    return cb(Jb'DwgMzOnx/Q86yn7QOst/0FbodLlS6XS57YW5LYzrdLu763S57YS4LTrLftA6yHzQVu90uVLodblW7nS5Uu92uTrPfdA6dz3a7Ya+L+2HvS/th7otjOt0urvrdLnthLktOnM82r82j4bth7ovOimyl9Dp8f0PDY3g8f0PyC8xjhSczBg2nIGy8u9bqhjX0+T+OV2VTAhMm9pX2d7Dnc8CB2XDyAQrNrazT14xpxmaHi+w2FL0nlByd3QDPl00Ls1f7st+UVmkGd73slLGrkVQ883gRSDbfA7cOnikZkE++0AoJomfmeaTN/aY59lsZTnaddL5lnSPyk2CgQEBGfIOt6SY1xTTLxvPMXHleRaVJQTo+uLgSfw4D6eekrUkEyNP7tLHmapG5hylNkttZYwMwC2r27F8IZIHcwx+2MRs+ODnWdpQktlonPsiTPQyw04x1VCKOpigDBqhZA53vT9AUxUEwZR3pJ6UDb7rCUn0cCMpQwwMpRd4VmpSbmYHEbXHYpb050g1mq6iBZRefIBGSJ6Si//9IYbTjv+FnDGYA3+JQkh/HR90lfN6P1npfXg6Y8ybbKtbfleaHf1PexUQDkl9TpH6PSBLeGvZ2FJbF3HDAKpE7yvJcOA2eZZWHLpG1fBQAIPSo442t2OY3P4Xi+MxX+N/HfFIx+n3WZTzUJyHfDezD69VMa7p9YGF40luMuIE2lxxUcyOMWxOG+rlSkdNy3LOppgXNywLFR2iBZMsEoi9XGL/le0P3N4mTHfLHc9X5ysOSZWNaLWh0+XbCwKtPlyX2rBrpKvFmNxr86nb70hL1WRIfuoomANBjKEw33NOIwwEO91YlH25glA8FCKR3U3tk6euckUq+bP3EricVRp/muZywIoBd3ZyPgKV4JQVxy8OwET2ClMFbJkgUVAyODfOURzcDPfbSJIZtog1kaE1oIQ55mcEV3UwlK9aaHRFI4nvjA2wH515DKw7m96XTcEOzt9vlIsNBYoRcmffxvz6tt7aiFG+rP8AKBFL1QLm2P37aWOUmhZ23ZgyKkj//ecQWSe05qx5gjFXXGKRQTsaFq+QxhPvpis8TWkS8hAFiOG+1Ao8qxNRGQH/z/vuHbDEwZnj7xnZ3Nqg4dggl7zsmwgpfSyS7z9WchyZB4ub0Esy7cipaO63l3Ic6Ejl+WnjzXJC+2T7EBCThCR2WjV4kFXdakXZa8yVTFw4cgZoSYYz7r7VYsN2hYnlmQJIH4aRCv1VnZ8KW24nCIi7f0y6rFLxjzRCgAujMsVq3boP8xBQlu3IU1fUJZBeNukXnyhLReBpsAjbVaqvAg5acNxCvzdjVC23og3OJhKhNjRXRkzxgAwVqQmgG6d1yuM8IN17XAg0z4URvuftOzm30o3+dW+uXXHnuD/kTzxaJh7dxhkrMzAwWoCm55Vnxp0OhAh0YWW7C9dkzd4nbZq/4S7oyb2GBJklMMcot1xKBfH0aqB8mH6KaAoBSfJoszi3N5M06zabmrkSlpnYjHTFPnhF5v7jYTj7IUEXX84hgDScSknFupOMqCa5VyGX8wxykoqv59xBB2OqWwYm9f37Q/9c+1lWj6Je3qRlcs/xmmkP8C/nB3Kg67bPOB5Vw4zuZewg4d7BjqFtolcuyWuNGXHRMeKYTM6kmyB/oZW82SGpkWT0nN3rCt1C6l2PIc+yERt+q/3X5Pc4TWzt6GqpaoGG/m2HRtVHdrBrbf4IRxikfqNkIAHM+//p5/QRpGcPTEcpC7mgGkugQpRjzlM9yqSCoUGfijXl32bw0voMPRldTsECp509XprK68LAjAKnOhulQg306/H9D35drMbmUK5daTMMP4Z024MYM3WD+9w9eWXzYU1qL6qyCsKsdMZk0qjPvmwbcg/xEQ3pluFuMuvNfbmrzhEDPBzQlvsKQQEl/IcSrtrDCBUjBdEcBjcEEAOLe6Kzlbmkipo2jFD2TYY84TKDJRSbrBGNPR9kx2XkL5jnkqP8qRhKig+7M208s0ZSW4VUQrgEPqb7pdFulLv+KSjdhuQ9ZnMmmDPB+Jj3DAh+XlEAXG/7wAy5KtyUVgx7tyxXPKdPu2eUrfMdmtPtP2bsNyvm9V/eYZjhfFWVXHtS6rb33D/ou05/uuYuDMcHDh13MRbNyKFK53scFlYthlB7Heym/JP6daP3bIhlosq+v+m2IMYnz95CTvBgwnrWPCIfIuB6Y/wdDdrp8f0PTFJV0s40tOQMuFCHDbvt8f0POYaOdD3lOWPXSIZWCUFsbi4l/lnmfhjwvnFlIWBlKPk2A+QhbDD2wka3Uwtf1ZP2YuzHwtuy0GcajZ1nugTUkpP3gmbLHidlfh4900qlNEM5VxPJGailJMIjiscMHTisyYr5mi1ppe7bScygZOq5gBuAEJkHi5uQe8+t+ozhxeAN4WsXrIP/ppb0m9sFXH52uR9xF8E42j3G4llVYIFVx2qaGR+mfkZEqMSjECMrgOEzsu1nRqsIdcN/+A21ISefbcLNNOlNSPHTAS7xUAMbebz3OyAfgMWNwL0QVTV9fUsqv3N0tNRgE7FmaXCeBe+ihMkZXLkh7FUsGLgR66SImGEMjYupwQFs2i3sjWXicRKkuQ/+vXFJ99VM93Gtv2aEjfc95ng+2iJMDOugCBi/HlqZXh/reSDJcM7AUfSbz4AY1g7okIuWaZXfFPgHNh/FnEiuFMB8ST0oqCCvwYaPXx35NJWggveK33CIF+QoBmIDR4kncgh9LBT8tRng9hvJFfC+Iod0/AWsehyPNE9+q7s3sN7MCY2r307CiXIrA+dRChFOQBB9z8H//8jCb10C+WfW9Gl40VGBrtJzw8092YwolA8V6vD38bSOi6cWobdbJR+hQzJaErIiwVsDSG/Nitf4IRJsRNY4DE75MVpsqFGs5MaS3F8M5+D455WeRUlS3/oUT8cubkHhamRGGEkMmZTBhMT8eXl7hReH0VaX/5wvlDvqPc5M/mhftcuZurPLoaJhmCU0g67BgGG89I5PyGiv9JqpP3+s+Nys+ymlb+cpcCKfOlIw1UdyYEniGfP+0u9nXaS0tzFgztvaDcfo8f0PewdnQBaMpzetPgWnJppPUioqdYi/WntLdQJBK3gzJybXnhjrl429G20+Np4ch138g89mw8gBa5JC5q742b6q+dp7DVxcOjtqpYqTsdJzJtH76Grm8j3luZ2UaciCDsr9VIvvYEwIkkj8vcWGSjx8jjKbDeSkdmO8K2pBcxs4m8bBHKNJk46vxV9w5WaAf+qelg3Q6fH9DzwlRanK89bp8f0P',{[4]=Zd,[1]=vc,[2]=kd,[3]=f_})
end)()(...)