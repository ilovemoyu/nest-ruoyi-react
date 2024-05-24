import { ProForm, ProFormText } from '@ant-design/pro-components'
import { useIntl } from '@umijs/max'
import { Form, Modal } from 'antd'
import type React from 'react'

export type FormValueType = any & Partial<API.System.User>

export type UpdateFormProps = {
  onCancel: (flag?: boolean, formVals?: FormValueType) => void
  onSubmit: (values: FormValueType) => Promise<void>
  open: boolean
  values: Partial<API.System.User>
}

const UpdateForm: React.FC<UpdateFormProps> = (props) => {
  const [form] = Form.useForm()
  const loginPassword = Form.useWatch('password', form)
  const userId = props.values.userId

  const intl = useIntl()
  const handleOk = () => {
    form.submit()
  }
  const handleCancel = () => {
    props.onCancel()
  }
  const handleFinish = async (values: Record<string, any>) => {
    props.onSubmit({ ...values, userId } as FormValueType)
  }

  const checkPassword = (rule: any, value: string) => {
    if (value === loginPassword) {
      // 校验条件自定义
      return Promise.resolve()
    }
    return Promise.reject(new Error('两次密码输入不一致'))
  }

  return (
    <Modal
      width={640}
      title={intl.formatMessage({
        id: 'system.user.reset.password',
        defaultMessage: '密码重置',
      })}
      open={props.open}
      destroyOnClose
      onOk={handleOk}
      onCancel={handleCancel}
    >
      <ProForm
        grid={true}
        form={form}
        layout='horizontal'
        onFinish={handleFinish}
        initialValues={{
          password: '',
          confirm_password: '',
        }}
      >
        <p>请输入用户{props.values.userName}的新密码！</p>
        <ProFormText.Password
          name='password'
          label='登录密码'
          rules={[
            {
              required: true,
              message: '登录密码不可为空。',
            },
          ]}
        />
        <ProFormText.Password
          name='confirm_password'
          label='确认密码'
          rules={[
            {
              required: true,
              message: '确认密码',
            },
            { validator: checkPassword },
          ]}
        />
      </ProForm>
    </Modal>
  )
}

export default UpdateForm
