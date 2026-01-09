# 벽통과
/execute as @e[tag=엔티티] ~~~~~~~ # 대충 플레이어 바라봄
tp @e[tag=엔티티] ~ ~ ~ ~ ~0.00001 # 바라보는 방향으로 이동
execute as @e[tag=엔티티] if entity @p run "/function test:test" # 이벤트 발생

# 트랩
execute as @p[x=1,y=10,z=1,dx=5,dy=10,dz=5] run "/function test:test" # 이벤트 발생
execute as @e[tag=엔티티] if entity @p[distance=2.5] run "/function test:test" # 이벤트 발생

ㄴ /summon ~~~~~~~~~~~~~
   /playsound ~~~~~~~~~~
   /summon lightningbalt?9 ~ ~ ~ "Silent:1b" # 소리없는 번개 가능?

# 시선 트리거
1. 데이터 더미 소환
/execute at 플레이어 run summon 좌표
2. 시선 좌표 복사
/execute at 플레이어 as 더미 run tp @s ~ ~ ~
3. 시선 좌표값 데이터 저장
/data ~~~~~~~~~~
4. 저장된 값을 변수로 사용하여 함수 실행
/function {변수값:좌표값}
5. 해당 조건 값이 특정 조건 도달시 이벤트 발생 (해당 플레이어가 특정 엔티티를 바라보는 기준으로 좌표값이 조건으로 충족되는 방법)
/execute if entity @p[x_rotation={$변수값},y_rotation={$변수값}] run function ~~~~~
6. 또는 특정 방향을 바라보면 이벤트 발생
/execute if entity @a[x_rotation=90..,y_rotation=-90..180] run 
7. 





 ## test 명령어 ##
execute as @a at @s run execute facing entity @e[type=armor_stand,limit=1,sort=nearest] feet if entity @e[type=armor_stand,distance=..5] run summon tnt ~ ~ ~ {Fuse:0}

execute as @a at @s run execute if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..20] if entity @s[nbt={Rotation:[x,yf]}] run tellraw @s {"text":"너는 아머스탠드를 정확히 바라보고 있어!"}

# 예시 함수 (raycast.mcfunction)
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 if entity @e[type=armor_stand,distance=..0.5] run <이벤트 실행>
execute as @a at @s anchored eyes positioned ^ ^ ^1.0 if entity @e[type=armor_stand,distance=..0.5] run <이벤트 실행>
# ... 0.5씩 증가시키면서 반복




[바닐라기준]

1. 커스텀 npc
1) 이름
2) 무적
3) 

엔티티 생성(데이터 부여) > 인터렉션 생성 > 데이터 저장 > 상호작용 > 명령어 실행 > 데이터 기반 실행

/function test:summon_npc {tag:"",name:"",data:""}

$summon ~ ~ ~ interaction {Tags:["$(tag)"],}
$summon ~ ~ ~ manequin {Tags:["$(tag)_dummy",],Custom_Name:["$(name)"],profile:["$(data)"]}


data get <block|entity|storage> <대상> [대상 NBT경로] [규모]
대상 NBT 데이터의 값을 [규모]만큼 곱해서 불러온다.
data merge <block|entity|storage> <대상> <새 NBT경로>
대상에 새 NBT 데이터를 병합한다.
data remove <block|entity|storage> <대상> <대상 NBT경로>
대상 NBT 데이터를 삭제한다. 플레이어의 NBT 데이터는 삭제할 수 없다.


data modify <block|entity|storage> <대상> <대상 NBT경로> <방식> from <block|entity|storage> <새 블록 좌표|새 개체|새 스토리지> [새 NBT경로]
- 대상의 데이터를 다른 대상의 데이터 값을 가져와서 수정
data modify <block|entity|storage> <대상> <대상 NBT경로> <방식> string <block|entity|storage> <새 블록 좌표|새 개체|새 스토리지> [새 NBT경로] [start] [end] # [start]이상 [end]미만
- 대상의 데이터를 다른 대상의 데이터 값 배열을 가져와서 수정
data modify <block|entity|storage> <대상> <대상 NBT경로> <방식> value <값>
- 대상의 데이터 수정

<방식>
insert <index>: 대상 NBT 데이터의 <index> 자리에 추가한다
merge: 대상 NBT 데이터에 병합한다.  
prepend: 대상 NBT 데이터의 가장 앞에 저장한다. # 남은 index 첫번째
append: 대상 NBT 데이터의 가장 마지막에 저장한다. # 남은 index 마지막
set: 대상의 NBT 값을 지정한다




2. 스킬


3. 대상 특정


4. 퀘스트






















5. 아이템 생성
1) 종류
2) 모델
3) 이름
4) 내용
5) 데미지
6) 장착 부위
7) 추가속성

# 기본형
/function set:item_test 
   {
   ,data:""
   ,model:""
   ,name:""
   ,lore:""
   ,damage:""
   ,equip:""
   ,a:""
}


$give @s $(data)[item_model="$(model)",item_name={$(name)},lore=[{$(lore)}],attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:$(damage),operation:"add_value"}],equippable={slot:"$(equip)"}$(a)]

$give 
@s 
$(data)[
item_model="$(model)",
item_name={$(name)},
lore=[{$(lore)}],
attribute_modifiers=[
   {id:"attack_damage",
   type:"attack_damage",
   amount:$(damage),
   operation:"add_value"}
],
equippable={slot:"$(equip)"}
$(a)]







점수 계산 방식

1. 모두 비교 (개손해)
2. 더하기 빼기 (번거로움)
3. 























