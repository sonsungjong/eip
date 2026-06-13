# [10과목] 프로그래밍 언어 활용 — 실전 문제 풀이(Python)

---

## 📝 파이썬 자료형

**Q1.** 다음 파이썬 자료형의 특징을 알맞게 쓰시오.

| 자료형 | 순서 | 중복 | 변경 가능 여부 |
|:---|:---:|:---:|:---:|
| 리스트 `list` | ? | ? | ? |
| 튜플 `tuple` | ? | ? | ? |
| 세트 `set` | ? | ? | ? |
| 딕셔너리 `dict` | ? | 키 중복? | ? |

<details>
<summary>정답 및 해설 보기</summary>

| 자료형 | 순서 | 중복 | 변경 가능 여부 |
|:---|:---:|:---:|:---:|
| 리스트 `list` | O | O | O |
| 튜플 `tuple` | O | O | X |
| 세트 `set` | X | X | O |
| 딕셔너리 `dict` | O | 키 중복 X | O |

*(해설: 리스트는 변경 가능한 순서 자료형, 튜플은 변경 불가능한 순서 자료형, 세트는 순서와 중복이 없는 자료형, 딕셔너리는 키-값 쌍을 저장하는 자료형입니다.)*
</details>

---

## 📝 내장 함수와 range

**Q2.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
total = 0

for num in range(2, 6):
    total += num

print(len(str(total)))
print(total)
```

<details>
<summary>정답 및 해설 보기</summary>

```text
2
14
```

*(해설: `range(2, 6)`은 2, 3, 4, 5를 생성합니다. 합은 14이고, `str(14)`의 길이는 2입니다.)*
</details>

---

## 📝 문자열 메서드

**Q3.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
text = "  apple,banana,apple  "
words = text.strip().replace("apple", "orange").split(",")

print(words)
print("-".join(words))
print(text.find("banana"))
```

<details>
<summary>정답 및 해설 보기</summary>

```text
['orange', 'banana', 'orange']
orange-banana-orange
8
```

*(해설: `strip()`은 양쪽 공백을 제거하고, `replace()`는 문자열을 치환하며, `split(",")`은 쉼표 기준으로 리스트를 만듭니다. `find("banana")`는 원본 문자열에서 `banana`가 시작되는 인덱스 8을 반환합니다.)*
</details>

---

## 📝 리스트 메서드

**Q4.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
nums = [3, 1, 4]
nums.append(2)
nums.insert(1, 5)
nums.remove(4)
last = nums.pop()
nums.sort()

print(nums)
print(last)
```

<details>
<summary>정답 및 해설 보기</summary>

```text
[1, 3, 5]
2
```

*(해설: `[3, 1, 4]`에서 2를 추가하고, 인덱스 1에 5를 삽입하면 `[3, 5, 1, 4, 2]`입니다. 4를 제거하고 마지막 값 2를 `pop()`으로 꺼낸 뒤 정렬하면 `[1, 3, 5]`가 됩니다.)*
</details>

---

## 📝 세트 연산

**Q5.** 다음 세트 연산 결과를 쓰시오.

```python
a = {1, 2, 3, 4}
b = {3, 4, 5}

print(a & b)
print(a | b)
print(a - b)
```

<details>
<summary>정답 및 해설 보기</summary>

```text
{3, 4}
{1, 2, 3, 4, 5}
{1, 2}
```

*(해설: `&`는 교집합, `|`는 합집합, `-`는 차집합입니다. 세트는 순서가 없는 자료형이므로 실제 출력 순서는 환경에 따라 달라질 수 있습니다.)*
</details>

---

## 📝 리스트 컴프리헨션

**Q6.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
result1 = [x * 2 for x in range(5)]
result2 = [x for x in range(10) if x % 2 == 0]

print(result1)
print(result2)
```

<details>
<summary>정답 및 해설 보기</summary>

```text
[0, 2, 4, 6, 8]
[0, 2, 4, 6, 8]
```

*(해설: 첫 번째 리스트는 0부터 4까지 각각 2를 곱한 결과이고, 두 번째 리스트는 0부터 9까지의 값 중 짝수만 선택한 결과입니다.)*
</details>

---

## 📝 슬라이싱과 제너레이터 표현식

**Q7.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
text = "HumanDev"
result = "".join(c for c in text[::-1] if c not in "ong")

print(result)
```

<details>
<summary>정답 및 해설 보기</summary>

**veDamuH**

*(해설: `text[::-1]`은 문자열을 뒤집어 `veDnamuH`로 만듭니다. 이후 `c not in "ong"` 조건으로 `n`이 제거되고, 남은 문자를 `join`으로 이어 붙여 `veDamuH`가 됩니다.)*
</details>

---

## 📝 얕은 복사와 중첩 리스트

**Q8.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
m = [[1], [2], [3], [4]]
b = m[:]

b[1] += b[0]
b[2] += b[1]
b[3] += b[2]

print(m)
print(sum(len(x) for x in m))
```

<details>
<summary>정답 및 해설 보기</summary>

```text
[[1], [2, 1], [3, 2, 1], [4, 3, 2, 1]]
10
```

*(해설: `m[:]`는 바깥 리스트만 복사하는 얕은 복사입니다. `b`와 `m`은 서로 다른 바깥 리스트지만 내부 리스트는 공유합니다. 그래서 `b[1] += b[0]`처럼 내부 리스트가 바뀌면 `m`에도 반영됩니다.)*
</details>

---

## 📝 반복문과 enumerate

**Q9.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
numbers = [2, 4, 6]
total = 0

for idx, num in enumerate(numbers):
    total += idx + num

print(total)
```

<details>
<summary>정답 및 해설 보기</summary>

**15**

*(해설: `enumerate(numbers)`는 `(0, 2)`, `(1, 4)`, `(2, 6)`을 차례로 만듭니다. 따라서 `(0+2) + (1+4) + (2+6) = 15`입니다.)*
</details>

---

## 📝 튜플과 딕셔너리

**Q10.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
student = ("철수", 90)
scores = {"철수": 90, "영희": 85, "민수": 95}

scores["지영"] = 88
scores["철수"] = 70
del scores["영희"]

print(student[0], student[1])
print(scores.get("영희"))
print(scores["철수"] + scores["지영"])
```

<details>
<summary>정답 및 해설 보기</summary>

```text
철수 90
None
158
```

*(해설: 튜플은 인덱스로 접근할 수 있습니다. 딕셔너리에서 `영희`는 삭제되었으므로 `get("영희")`는 `None`을 반환합니다. `철수`의 점수는 70으로 변경되었고 `지영`은 88이므로 합은 158입니다.)*
</details>

---

## 📝 함수와 람다

**Q11.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
def add_numbers(x, y):
    return x + y

multiply_lambda = lambda x, y: x * y

print(add_numbers(3, 5))
print(multiply_lambda(3, 5))
```

<details>
<summary>정답 및 해설 보기</summary>

```text
8
15
```

*(해설: 일반 함수 `add_numbers(3, 5)`는 8을 반환하고, 람다 함수 `multiply_lambda(3, 5)`는 15를 반환합니다.)*
</details>

---

## 📝 클래스와 상속

**Q12.** 다음 Python 코드의 출력 결과를 쓰시오.

```python
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        pass

class Dog(Animal):
    def speak(self):
        return "멍멍!"

class Cat(Animal):
    def speak(self):
        return "야옹!"

animals = [Dog("바둑이"), Cat("나비")]

for animal in animals:
    print(animal.name, animal.speak())
```

<details>
<summary>정답 및 해설 보기</summary>

```text
바둑이 멍멍!
나비 야옹!
```

*(해설: `Dog`와 `Cat`은 `Animal`을 상속하고 `speak()` 메서드를 오버라이딩합니다. 실제 객체의 클래스에 따라 각각 다른 `speak()` 결과가 출력됩니다.)*
</details>
